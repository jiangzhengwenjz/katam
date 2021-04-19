#include "bronto_burt.h"
#include "functions.h"
#include "object.h"
#include "task.h"

struct Object2* CreateBrontoBurt(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    obj = TaskGetStructPtr(task, obj2);
    InitObject(obj, arg0, arg1);
    if (obj->base.x > obj->kirby3->base.base.x) {
        obj->base.flags |= 1;
    } else {
        obj->base.flags &= ~1;
    }
    obj->base.unkC |= 1;
    obj->base.unkC |= 4;
    sub_0803E2B0(&obj->base, -5, -6, 5, 5);
    sub_0803E308(&obj->base, -6, -7, 6, 7);
    ObjectInitSprite(obj);
    switch (arg0->subtype1) {
        default:
        case 0:
            if (obj->base.y > obj->kirby3->base.base.y) {
                sub_080AEB68(obj);
            } else {
                sub_080AD8F0(obj);
            }
            break;
        case 1:
            if (obj->base.y > obj->kirby3->base.base.y) {
                sub_080AEBD8(obj);
            } else {
                sub_080AEC34(obj);
            }
            break;
        case 2:
            sub_080ADCA4(obj);
            break;
        case 3:
            sub_080AE100(obj); 
            break;
        case 4:
            sub_080AECA4(obj);
            break;
        case 5:
            sub_080AED1C(obj);
            break;
    }
    obj->unk9E = 0;
    obj->unk7C = 0;
    return obj;
}

void sub_080AD7C0(struct Object2* obj) {
    obj->base.flags = (obj->base.flags | 0x140) & ~0x20;
    obj->base.yspeed = 0;
    switch (obj->object->subtype1) {
        default:
        case 0:
            if (obj->base.y > obj->kirby3->base.base.y) {
                sub_080AEB68(obj);
            } else {
                sub_080AD8F0(obj);
            }
            break;
        case 1:
            if (obj->base.y > obj->kirby3->base.base.y) {
                sub_080AEBD8(obj);
            } else {
                sub_080AEC34(obj);
            }
            break;
        case 2:
            if (obj->subtype != 0) {
                sub_080AEC34(obj);
            } else {
                sub_080AD8F0(obj);
            }
            break;
        case 3:
            sub_080AE100(obj);
            break;
        case 4:
            sub_080AECA4(obj);
            break;
        case 5:
            sub_080AED90(obj);
            break;
    }
}

void sub_080AD870(struct Object2* obj) {
    if (obj->base.xspeed < 0) {
        obj->base.xspeed += 0xE;
        if (obj->base.xspeed > 0) {
            obj->base.xspeed = 0;
        }
    } else {
        obj->base.xspeed -= 0xE;
        if (obj->base.xspeed < 0) {
            obj->base.xspeed = 0;
        }
    }
    obj->base.counter++;
}

void sub_080AD8AC(struct Object2* obj) {
    obj->base.flags |= 4;
    if ((obj->base.yspeed -= 0x19) < -0x28A) {
        obj->base.yspeed = -0x28A;
    }

    if (obj->base.counter >= 0x29) {
        sub_080AD8F0(obj);
    } else {
        obj->base.counter++;
    }
}

void sub_080AD8F0(struct Object2* obj) {
    obj->base.flags |= 4;
    ObjectSetFunc(obj, 2, sub_080AD958);

    if (obj->subtype != 0) obj->base.xspeed = 0x100;
    else obj->base.xspeed = 0xC0;
    obj->base.yspeed = -0x28A;

    if (obj->base.flags & 1) {
        obj->base.xspeed = -obj->base.xspeed;
    }
    obj->base.flags |= 0x140;
}

void sub_080AD958(struct Object2* obj) {
    obj->base.flags |= 4;
    obj->base.yspeed += 0x19;

    if (obj->base.yspeed > 0x28A) {
        obj->base.yspeed = 0x28A;
    }

    if (obj->base.counter >= 0x29) {
        obj->unk85++;
        if (obj->unk85 >= 3) {
            sub_080AEBC4(obj);
        } else {
            ObjectSetFunc(obj, 1, sub_080AD8AC);

            if (obj->subtype != 0) obj->base.xspeed = 0x100;
            else obj->base.xspeed = 0xC0;
            obj->base.yspeed = 0x28A;

            if (obj->base.flags & 1) {
                obj->base.xspeed = -obj->base.xspeed;
            }
            obj->base.flags |= 0x140;
        }
    } else {
        obj->base.counter++;
    }
}

void sub_080ADA08(struct Object2* obj) {
    obj->base.flags |= 4;
    obj->base.yspeed += 0x19;
    if (obj->base.yspeed > 0x7F00) {
        obj->base.yspeed = 0x7F00;
    }
}

void sub_080ADA30(struct Object2* obj) {
    obj->base.flags |= 4;
    if ((obj->base.yspeed -= 0x19) < -0x28A) {
        obj->base.yspeed = -0x28A;
    }

    if (obj->base.counter > 0x14) {
        obj->kirby3 = sub_0803D368(obj);
        if (obj->kirby3->base.base.y > obj->base.y) obj->unk78 = sub_080ADA94;
        else obj->unk78 = sub_080ADAD8;
    }

    obj->base.counter++;
}

void sub_080ADA94(struct Object2* obj) {
    obj->base.flags |= 4;
    if ((obj->base.yspeed -= 0x20) < -0x28A) {
        obj->base.yspeed = -0x28A;
    }

    if (obj->base.counter >= 0x29) {
        sub_080AEC34(obj);
    } else {
        obj->base.counter++;        
    }
}

void sub_080ADAD8(struct Object2* obj) {
    obj->base.flags |= 4;
    if ((obj->base.yspeed -= 0xD) < -0x28A) {
        obj->base.yspeed = -0x28A;
    }

    if (obj->base.counter >= 0x29) {
        sub_080AEC34(obj);
    } else {
        obj->base.counter++;        
    }
}

void sub_080ADB1C(struct Object2* obj) {
    obj->base.flags |= 4;

    obj->base.yspeed += 0x19;
    if (obj->base.yspeed > 0x28A) {
        obj->base.yspeed = 0x28A;
    }

    if (obj->base.counter > 0x14) {
        obj->kirby3 = sub_0803D368(obj);
        if (obj->kirby3->base.base.y > obj->base.y) obj->unk78 = sub_080ADC10;
        else obj->unk78 = sub_080ADB7C;
    }

    obj->base.counter++;
}

void sub_080ADB7C(struct Object2* obj) {
    obj->base.flags |= 4;
    obj->base.yspeed += 0x20;
    if (obj->base.yspeed > 0x28A) {
        obj->base.yspeed = 0x28A;
    }
    if (obj->base.counter >= 0x29) {
        ObjectSetFunc(obj, 1, sub_080ADA30);

        if (obj->subtype != 0) obj->base.xspeed = 0x100;
        else obj->base.xspeed = 0xC0;
        obj->base.yspeed = 0x28A;

        if (obj->base.flags & 1) {
            obj->base.xspeed = -obj->base.xspeed;
        }
        obj->base.flags |= 0x140;
    } else {
        obj->base.counter++;
    }
}

void sub_080ADC10(struct Object2* obj) {
    obj->base.flags |= 4;
    obj->base.yspeed += 0xD;
    if (obj->base.yspeed > 0x28A) {
        obj->base.yspeed = 0x28A;
    }

    if (obj->base.counter >= 0x29) {
        ObjectSetFunc(obj, 1, sub_080ADA30);

        if (obj->subtype != 0) obj->base.xspeed = 0x100;
        else obj->base.xspeed = 0xC0;

        obj->base.yspeed = 0x28A;
        if (obj->base.flags & 1) {
            obj->base.xspeed = -obj->base.xspeed;
        }
        obj->base.flags |= 0x140;
    } else {
        obj->base.counter++;
    }
}

void sub_080ADCA4(struct Object2* obj) {
    ObjectSetFunc(obj, 3, sub_080ADD74);

    if (obj->unk80 < 1) {
        return;
    }

    if (abs(obj->base.y - obj->kirby3->base.base.y) < 0x2000) {
        obj->base.x = obj->kirby3->base.base.x;
    } else {
        obj->base.x = obj->kirby3->base.base.x;
        obj->base.x += (s32)(gUnk_08353A3C[Rand16() & 3]) << 8;
    }
    obj->base.y = gCurLevelInfo[obj->base.unk56].unk10;
    obj->base.flags |= 0x140;
    if (obj->base.x > obj->kirby3->base.base.x) {
        obj->base.flags |= 1;
    } else {
        obj->base.flags &= ~1;
    }
}

void sub_080ADD74(struct Object2* obj) {
    if ((obj->base.yspeed -= 0x25) < -0x300) {
        obj->base.yspeed = -0x300;
    }
    if ((obj->base.counter & 0x1F) == 0x1F) {
        obj->kirby3 = sub_0803D368(obj);
    }

    if (abs(obj->base.y - obj->kirby3->base.base.y) < 0x1000) {
        sub_080AEC90(obj);
    } else {
        obj->base.counter++;
    }
}

void sub_080ADDE0(struct Object2* obj) {
    obj->base.flags |= 4;
    if (obj->subtype != 0) {
        if (obj->unk9E == 0) {
            obj->unk9F++;
            if (gUnk_08353AC4[obj->unk9F].unk8 == 0) {
                obj->unk9F--;
            }
            obj->unk9E = gUnk_08353AC4[obj->unk9F].unk8;
            if (gUnk_08353AC4[obj->unk9F].unk9 != 0xFF) {
                obj->unk83 = gUnk_08353AC4[obj->unk9F].unk9;
            }
            if (obj->unk9F != 0) {
                if (gUnk_08353AC4[obj->unk9F].unk0 != gUnk_08353AC4[obj->unk9F - 1].unk0) {
                    obj->base.xspeed = gUnk_08353AC4[obj->unk9F].unk0;
                    if (obj->base.flags & 1) {
                        obj->base.xspeed = -obj->base.xspeed;
                    }
                }

                if (gUnk_08353AC4[obj->unk9F].unk2 != gUnk_08353AC4[obj->unk9F - 1].unk2) {
                    obj->base.yspeed = gUnk_08353AC4[obj->unk9F].unk2;
                }
            } else {
                obj->base.yspeed = gUnk_08353AC4[obj->unk9F].unk2;
                obj->base.xspeed = gUnk_08353AC4[obj->unk9F].unk0;
                if (obj->base.flags & 1) {
                    obj->base.xspeed = -obj->base.xspeed;
                }
            }
        }
        if (obj->base.flags & 1) {
            obj->base.xspeed -= gUnk_08353AC4[obj->unk9F].unk4;
        } else {
            obj->base.xspeed += gUnk_08353AC4[obj->unk9F].unk4;
        }
        obj->base.yspeed += gUnk_08353AC4[obj->unk9F].unk6;
        obj->unk9E--;
        if (gUnk_08353AC4[(u8)(obj->unk9F + 1)].unk8 != 0) {
            return;
        }
        if (obj->unk9E != 0) {
            return;
        }
        obj->base.yspeed = 0;
        ObjectSetFunc(obj, 2, sub_080ADB1C);

        if (obj->subtype != 0) obj->base.xspeed = 0x100;
        else obj->base.xspeed = 0xC0;
        obj->base.yspeed = -0x28A;

        if (obj->base.flags & 1) {
            obj->base.xspeed = -obj->base.xspeed;
        }
        obj->base.flags |= 0x140;
    } else {
        if (obj->unk9E == 0) {
            obj->unk9F++;
            if (gUnk_08353A40[obj->unk9F].unk8 == 0) {
                obj->unk9F--;
            }
            obj->unk9E = gUnk_08353A40[obj->unk9F].unk8;
            if (gUnk_08353A40[obj->unk9F].unk9 != 0xFF) {
                obj->unk83 = gUnk_08353A40[obj->unk9F].unk9;
            }

            if (obj->unk9F != 0) {
                if (gUnk_08353A40[obj->unk9F].unk0 != gUnk_08353A40[obj->unk9F - 1].unk0) {
                    obj->base.xspeed = gUnk_08353A40[obj->unk9F].unk0;
                    if (obj->base.flags & 1) {
                        obj->base.xspeed = -obj->base.xspeed;
                    }
                }

                if (gUnk_08353A40[obj->unk9F].unk2 != gUnk_08353A40[obj->unk9F - 1].unk2) {
                    obj->base.yspeed = gUnk_08353A40[obj->unk9F].unk2;
                }
            } else {
                obj->base.yspeed = gUnk_08353A40[obj->unk9F].unk2;
                obj->base.xspeed = gUnk_08353A40[obj->unk9F].unk0;
                if (obj->base.flags & 1) {
                    obj->base.xspeed = -obj->base.xspeed;
                }
            }
        }

        if (obj->base.flags & 1) {
            obj->base.xspeed -= gUnk_08353A40[obj->unk9F].unk4;
        } else {
            obj->base.xspeed += gUnk_08353A40[obj->unk9F].unk4;
        }
        obj->base.yspeed += gUnk_08353A40[obj->unk9F].unk6;
        obj->unk9E--;
        if (gUnk_08353A40[(u8)(obj->unk9F + 1)].unk8 == 0 && obj->unk9E == 0) {
            obj->base.yspeed = 0;
            sub_080AD8F0(obj);
        }
    }
}

void sub_080AE100(struct Object2* obj) {
    ObjectSetFunc(obj, 2, sub_080AE1AC);
    obj->kirby3 = sub_0803D368(obj);
    if (obj->base.x > obj->kirby3->base.base.x) {
        obj->base.flags |= 1;
    } else {
        obj->base.flags &= ~1;
    }

    if (obj->base.y > obj->kirby3->base.base.y) {
        obj->base.yspeed = 0xB5;
        obj->unk85 = 4;
    } else {
        obj->base.yspeed = -0xB5;
        obj->unk85 = 8;
    }

    if (obj->base.x < obj->kirby3->base.base.x) {
        obj->base.xspeed = 0xB5;
        obj->unk85 |= 2;
    } else {
        obj->base.xspeed = -0xB5;
        obj->unk85 |= 1;
    }

    obj->base.flags |= 0x40;
    obj->base.flags &= ~0x100;
}

void sub_080AE1AC(struct Object2* obj) {
    s16 temp;

    obj->base.flags |= 4;
    if (obj->base.unk62 != 0) {
        switch ((gUnk_082D88B8[obj->base.unk57] & 0xf0000000)) {
            case 0x10000000:
            case 0x20000000:
            case 0x30000000:
                obj->base.counter = 0x14;
                if (obj->unk85 & 2) {
                    if (obj->unk85 & 8) {
                        temp = obj->subtype != 1 ? 0xb5 : 0xe2;
                        obj->base.xspeed = -temp;
                        temp = obj->subtype != 1 ? 0xb5 : 0xe2;
                        obj->base.yspeed = temp;
                        obj->base.flags ^= 1;
                        obj->unk85 = 5;
                    } else {
                        obj->base.xspeed = 0;
                        temp = obj->subtype != 1 ? 0x100 : 0x140;
                        obj->base.yspeed = temp;
                        obj->unk85 = 4;
                    }
                } else if (obj->unk85 & 8) {
                    temp = obj->subtype != 1 ? 0x100 : 0x140;
                    obj->base.xspeed = -temp;
                    obj->base.yspeed = 0;
                    obj->unk85 = 1;
                    obj->base.flags |= 1;
                }
                break;

            case 0x40000000:
            case 0x50000000:
            case 0x60000000:
                obj->base.counter = 0x14;
                if (obj->unk85 & 1) {
                    if (obj->unk85 & 8) {
                        obj->base.xspeed = obj->subtype != 1 ? 0xb5 : 0xe2;
                        temp = obj->subtype != 1 ? 0xb5 : 0xe2;
                        obj->base.yspeed = temp;
                        obj->base.flags ^= 1;
                        obj->unk85 = 6;
                    } else {
                        obj->base.xspeed = 0;
                        temp = obj->subtype != 1 ? 0x100 : 0x140;
                        obj->base.yspeed = temp;
                        obj->unk85 = 4;
                    }
                } else if (obj->unk85 & 8) {
                    temp = obj->subtype != 1 ? 0x100 : 0x140;
                    obj->base.xspeed = temp;
                    obj->base.yspeed = 0;
                    obj->unk85 = 2;
                    obj->base.flags &= ~1;
                }
                break;

            case 0xA0000000:
            case 0xB0000000:
            case 0xC0000000:
                obj->base.counter = 0x14;
                if (obj->unk85 & 2) {
                    if (obj->unk85 & 4) {
                        temp = obj->subtype != 1 ? 0xb5 : 0xe2;
                        obj->base.xspeed = -temp;
                        temp = obj->subtype != 1 ? 0xb5 : 0xe2;
                        obj->base.yspeed = -temp;
                        obj->base.flags ^= 1;
                        obj->unk85 = 9;
                    } else {
                        obj->base.xspeed = 0;
                        temp = obj->subtype != 1 ? 0x100 : 0x140;
                        obj->base.yspeed = -temp;
                        obj->unk85 = 8;
                    }
                } else if (obj->unk85 & 4) {
                    temp = obj->subtype != 1 ? 0x100 : 0x140;
                    obj->base.xspeed = -temp;
                    obj->base.yspeed = 0;
                    obj->unk85 = 1;
                    obj->base.flags |= 1;
                }
                break;

            case 0x70000000:
            case 0x80000000:
            case 0x90000000:
                obj->base.counter = 0x14;
                if (obj->unk85 & 1) {
                    if (obj->unk85 & 4) {
                        obj->base.xspeed = obj->subtype != 1 ? 0xb5 : 0xe2;
                        temp = obj->subtype != 1 ? 0xb5 : 0xe2;
                        obj->base.yspeed = -temp;
                        obj->base.flags ^= 1;
                        obj->unk85 = 0xA;
                    } else {
                        obj->base.xspeed = 0;
                        temp = obj->subtype != 1 ? 0x100 : 0x140;
                        obj->base.yspeed = -temp;
                        obj->unk85 = 8;
                    }
                } else if (obj->unk85 & 4) {
                    temp = obj->subtype != 1 ? 0x100 : 0x140;
                    obj->base.xspeed = temp;
                    obj->base.yspeed = 0;
                    obj->unk85 = 2;
                    obj->base.flags &= ~1;
                }
                break;

            default:
                obj->base.counter = 0x14;
                if (obj->base.unk62 & 1) {
                    if (obj->unk85 & 1) {
                        obj->base.flags &= ~1;
                        if (obj->unk85 & 4) {
                            obj->base.xspeed = -obj->base.xspeed;
                            obj->unk85 = 6;
                        } else if (obj->unk85 & 8) {
                            obj->base.xspeed = -obj->base.xspeed;
                            obj->unk85 = 0xA;
                        } else {
                            temp = obj->subtype != 1 ? 0x100 : 0x140;
                            obj->base.xspeed = temp;
                            obj->unk85 = 2;
                        }
                    } else if (obj->unk85 & 2) {
                        obj->base.flags |= 1;
                        if (obj->unk85 & 4) {
                            obj->base.xspeed = -obj->base.xspeed;
                            obj->unk85 = 5;
                        } else if (obj->unk85 & 8) {
                            obj->base.xspeed = -obj->base.xspeed;
                            obj->unk85 = 9;
                        } else {
                            temp = obj->subtype != 1 ? 0x100 : 0x140;
                            obj->base.xspeed = -temp;
                            obj->unk85 = 1;
                        }
                    }
                } else if (obj->base.unk62 & 8) {
                    if (obj->unk85 & 4) {
                        if (obj->unk85 & 1) {
                            temp = obj->subtype != 1 ? 0xb5 : 0xe2;
                            obj->base.yspeed = -temp;
                            obj->unk85 = 9;
                        } else if (obj->unk85 & 2) {
                            temp = obj->subtype != 1 ? 0xb5 : 0xe2;
                            obj->base.yspeed = -temp;
                            obj->unk85 = 0xA;
                        } else {
                            temp = obj->subtype != 1 ? 0x100 : 0x140;
                            obj->base.yspeed = -temp;
                            obj->unk85 = 8;
                        }
                    }
                } else {
                    if (obj->base.unk62 & 4 && obj->unk85 & 8) {
                        if (obj->unk85 & 1) {
                            temp = obj->subtype != 1 ? 0xb5 : 0xe2;
                            obj->base.yspeed = temp;
                            obj->unk85 = 5;
                        } else if (obj->unk85 & 2) {
                            temp = obj->subtype != 1 ? 0xb5 : 0xe2;
                            obj->base.yspeed = temp;
                            obj->unk85 = 6;
                        } else {
                            temp = obj->subtype != 1 ? 0x100 : 0x140;
                            obj->base.yspeed = temp;
                            obj->unk85 = 4;
                        }
                    }
                }
                break;
        }
    }
    if (obj->base.counter != 0) {
        obj->base.counter--;
        obj->unk83 = 1;
    } else {
        obj->unk83 = 2;
    }
}

// Stalk
void BrontoBurtStalk(struct Object2* obj) {
    s32 r4, r3;

    obj->base.flags |= 4;
    obj->unk9E++;
    if (obj->unk9E > 7) {
        obj->kirby3 = sub_0803D368(obj);
        obj->unk9E = 0;
        obj->unkA0 = obj->kirby3->base.base.x >> 8;
        obj->unkA2 = obj->kirby3->base.base.y >> 8;
    }

    r4 = obj->base.y & 0xFFFFF000;
    r3 = (obj->unkA2 << 8) & 0xFFFFF000;
    // Stalk Y position
    if (r4 > r3) {
        obj->base.yspeed += 8;
        if (obj->base.yspeed > 0x100) {
            obj->base.yspeed = 0x100;
        }
    } else if (r4 < r3) {
        if ((obj->base.yspeed -= 8) < -0x100) {
            obj->base.yspeed = -0x100;
        }
    } else {
        if (obj->base.yspeed < 0) {
            if ((obj->base.yspeed += 4) > 0) {
                obj->base.yspeed = 0;
            }
        } else {
            if ((obj->base.yspeed -= 4) < 0) {
                obj->base.yspeed = 0;
            }
        }
    }

    r4 = obj->base.x & 0xFFFFF000;
    r3 = (obj->unkA0 << 8) & 0xFFFFF000;
    // Stalk X position
    if (r4 < r3) {
        obj->base.flags &= ~1;
        obj->base.xspeed += 8;
        if (obj->base.xspeed > 0x100) {
            obj->base.xspeed = 0x100;
        } else if (obj->base.xspeed < -0x100) {
            obj->base.xspeed = -0x100;
        }
    } else if (r4 > r3) {
        obj->base.flags |= 1;
        if (obj->base.flags & 1) {
            obj->base.xspeed -= 8;
            if (obj->base.xspeed < -0x100) {
                obj->base.xspeed = -0x100;
            } else if (obj->base.xspeed > 0x100) {
                obj->base.xspeed = 0x100;
            }
        } else {
            obj->base.xspeed += 8;
            if (obj->base.xspeed > 0x100) {
                obj->base.xspeed = 0x100;
            } else if (obj->base.xspeed < -0x100) {
                obj->base.xspeed = -0x100;
            }
        }
    } else {
        if (obj->base.xspeed < 0) {
            if ((obj->base.xspeed += 4) > 0) {
                obj->base.xspeed = 0;
            }
        } else {
            if ((obj->base.xspeed -= 4) < 0) {
                obj->base.xspeed = 0;
            }
        }
    }

    if ((obj->base.y + 0xF00) >> 8 < obj->unkA2) {
        obj->unk83 = 3;
    } else if ((obj->base.y - 0xF00) >> 8 > obj->unkA2) {
        obj->unk83 = 1;
    } else {
        obj->unk83 = 2;
    }

    obj->base.counter++;
    if (obj->base.counter > 0xFF) {
        sub_080AECC4(obj);
    }
}

void sub_080AE834(struct Object2* obj) {
    obj->base.flags |= 4;
    obj->base.yspeed += 0x19;
    if (obj->base.yspeed > 0x7F00) {
        obj->base.yspeed = 0x7F00;
    }
}

void sub_080AE85C(struct Object2* obj) {
    ObjectSetFunc(obj, 1, sub_080AE910);
    obj->base.yspeed = 0x300;
    obj->base.flags = (obj->base.flags & ~0x20) | 0x140;
    PlaySfx(&obj->base, 0x138);
}

void sub_080AE910(struct Object2* obj) {
    obj->base.flags |= 4;
    if (obj->subtype != 0) {
        if (obj->unk9E == 0) {
            obj->unk9F++;
            if (gUnk_08353BB4[obj->unk9F].unk8 == 0) {
                obj->unk9F--;
            }
            obj->unk9E = gUnk_08353BB4[obj->unk9F].unk8;
            if (gUnk_08353BB4[obj->unk9F].unk9 != 0xFF) {
                obj->unk83 = gUnk_08353BB4[obj->unk9F].unk9;
            }
            if (obj->unk9F != 0) {
                if (gUnk_08353BB4[obj->unk9F].unk0 != gUnk_08353BB4[obj->unk9F - 1].unk0) {
                    obj->base.xspeed = gUnk_08353BB4[obj->unk9F].unk0;
                    if (obj->base.flags & 1) {
                        obj->base.xspeed = -obj->base.xspeed;
                    }
                }
                if (gUnk_08353BB4[obj->unk9F].unk2 != gUnk_08353BB4[obj->unk9F - 1].unk2) {
                    obj->base.yspeed = gUnk_08353BB4[obj->unk9F].unk2;
                }
            } else {
                obj->base.yspeed = gUnk_08353BB4[obj->unk9F].unk2;
                obj->base.xspeed = gUnk_08353BB4[obj->unk9F].unk0;
                if (obj->base.flags & 1) {
                    obj->base.xspeed = -obj->base.xspeed;
                }
            }
        }
        if (obj->base.flags & 1) {
            obj->base.xspeed -= gUnk_08353BB4[obj->unk9F].unk4;
        } else {
            obj->base.xspeed += gUnk_08353BB4[obj->unk9F].unk4;
        }
        obj->base.yspeed += gUnk_08353BB4[obj->unk9F].unk6;
        obj->unk9E--;
    } else {
        if (obj->unk9E == 0) {
            obj->unk9F++;
            if (gUnk_08353B48[obj->unk9F].unk8 == 0) {
                obj->unk9F--;
            }
            obj->unk9E = gUnk_08353B48[obj->unk9F].unk8;
            if (gUnk_08353B48[obj->unk9F].unk9 != 0xFF) {
                obj->unk83 = gUnk_08353B48[obj->unk9F].unk9;
            }
            if (obj->unk9F != 0) {
                if (gUnk_08353B48[obj->unk9F].unk0 != gUnk_08353B48[obj->unk9F - 1].unk0) {
                    obj->base.xspeed = gUnk_08353B48[obj->unk9F].unk0;
                    if (obj->base.flags & 1) {
                        obj->base.xspeed = -obj->base.xspeed;
                    }
                }
                if (gUnk_08353B48[obj->unk9F].unk2 != gUnk_08353B48[obj->unk9F - 1].unk2) {
                    obj->base.yspeed = gUnk_08353B48[obj->unk9F].unk2;
                }
            } else {
                obj->base.yspeed = gUnk_08353B48[obj->unk9F].unk2;
                obj->base.xspeed = gUnk_08353B48[obj->unk9F].unk0;
                if (obj->base.flags & 1) {
                    obj->base.xspeed = -obj->base.xspeed;
                }
            }
        }
        if (obj->base.flags & 1) {
            obj->base.xspeed -= gUnk_08353B48[obj->unk9F].unk4;
        } else {
            obj->base.xspeed += gUnk_08353B48[obj->unk9F].unk4;
        }
        obj->base.yspeed += gUnk_08353B48[obj->unk9F].unk6;
        obj->unk9E--;
    }
}

void sub_080AEB68(struct Object2* obj) {
    ObjectSetFunc(obj, 1, sub_080AD8AC);

    if (obj->subtype != 0) obj->base.xspeed = 0x100;
    else obj->base.xspeed = 0xC0;
    obj->base.yspeed = 0x28A;

    if (obj->base.flags & 1) {
        obj->base.xspeed = -obj->base.xspeed;
    }
    obj->base.flags |= 0x140;
}


void sub_080AEBC4(struct Object2* obj) {
    ObjectSetFunc(obj, 1, sub_080ADA08);
}

void sub_080AEBD8(struct Object2* obj) {
    ObjectSetFunc(obj, 1, sub_080ADA30);

    if (obj->subtype != 0) obj->base.xspeed = 0x100;
    else obj->base.xspeed = 0xC0;
    obj->base.yspeed = 0x28A;

    if (obj->base.flags & 1) {
        obj->base.xspeed = -obj->base.xspeed;
    }
    obj->base.flags |= 0x140;
}

void sub_080AEC34(struct Object2* obj) {
    ObjectSetFunc(obj, 2, sub_080ADB1C);

    if (obj->subtype != 0) obj->base.xspeed = 0x100;
    else obj->base.xspeed = 0xC0;
    obj->base.yspeed = -0x28A;

    if (obj->base.flags & 1) {
        obj->base.xspeed = -obj->base.xspeed;
    }
    obj->base.flags |= 0x140;
}

void sub_080AEC90(struct Object2* obj) {
    ObjectSetFunc(obj, 2, sub_080ADDE0);
}

void sub_080AECA4(struct Object2* obj) {
    ObjectSetFunc(obj, 1, BrontoBurtStalk);
    obj->base.flags |= 0x140;
}

void sub_080AECC4(struct Object2* obj) {
    ObjectSetFunc(obj, 1, sub_080AE834);
    obj->base.xspeed = 0x66;
    if (obj->base.x > obj->kirby3->base.base.x) {
        obj->base.flags |= 1;
    } else {
        obj->base.flags &= ~1;
    }
    obj->base.flags ^= 1;
    if (obj->base.flags & 1) {
        obj->base.xspeed = -obj->base.xspeed;
    }
}

void sub_080AED1C(struct Object2* obj) {
    ObjectSetFunc(obj, 0, sub_080AED30);
}

void sub_080AED30(struct Object2* obj) {
    obj->base.flags |= 4;
    if ((obj->base.counter & 0x3F) == 0x3F) {
        obj->kirby3 = sub_0803D368(obj);
    }

    if (abs(obj->base.x - obj->kirby3->base.base.x) < 0x3000) {
        sub_080AE85C(obj);
    } else {
        obj->base.counter++;
    }
}

void sub_080AED90(struct Object2* obj) {
    ObjectSetFunc(obj, 1, sub_080AEDD0);
    obj->base.xspeed = 0x300;
    if (obj->base.flags & 1) {
        obj->base.xspeed = -obj->base.xspeed;
    }
    obj->base.flags = (obj->base.flags & ~0x20) | 0x140;
}

void sub_080AEDD0(struct Object2* obj) {
    obj->base.flags |= 4;
}

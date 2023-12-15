.class public Lcom/Fix/ColorTransform;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Arnova(Lkou;)[F
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x9

    new-array v0, v0, [F

    const/16 v1, 0x1e

    if-gt p0, v1, :cond_0

    fill-array-data v0, :array_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x28

    if-gt p0, v1, :cond_1

    fill-array-data v0, :array_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x32

    if-gt p0, v1, :cond_2

    fill-array-data v0, :array_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x3c

    if-gt p0, v1, :cond_3

    fill-array-data v0, :array_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x46

    if-gt p0, v1, :cond_4

    fill-array-data v0, :array_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x5a

    if-gt p0, v1, :cond_5

    fill-array-data v0, :array_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xa0

    if-gt p0, v1, :cond_6

    fill-array-data v0, :array_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xc8

    if-gt p0, v1, :cond_7

    fill-array-data v0, :array_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x136

    if-gt p0, v1, :cond_8

    fill-array-data v0, :array_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x208

    if-gt p0, v1, :cond_9

    fill-array-data v0, :array_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x2d0

    if-gt p0, v1, :cond_a

    fill-array-data v0, :array_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x334

    if-gt p0, v1, :cond_b

    fill-array-data v0, :array_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x398

    if-gt p0, v1, :cond_c

    fill-array-data v0, :array_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x3fc

    if-gt p0, v1, :cond_d

    fill-array-data v0, :array_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x460

    if-gt p0, v1, :cond_e

    fill-array-data v0, :array_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x4c4

    if-gt p0, v1, :cond_f

    fill-array-data v0, :array_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x5f0

    if-gt p0, v1, :cond_10

    fill-array-data v0, :array_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x6b8

    if-gt p0, v1, :cond_11

    fill-array-data v0, :array_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x7e4

    if-gt p0, v1, :cond_12

    fill-array-data v0, :array_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x8ac

    if-gt p0, v1, :cond_13

    fill-array-data v0, :array_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x974

    if-gt p0, v1, :cond_14

    fill-array-data v0, :array_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0xaa0

    if-gt p0, v1, :cond_15

    fill-array-data v0, :array_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0xbcc

    if-gt p0, v1, :cond_16

    fill-array-data v0, :array_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0xcf8

    if-gt p0, v1, :cond_17

    fill-array-data v0, :array_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0xe24

    if-gt p0, v1, :cond_18

    fill-array-data v0, :array_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0xf50

    if-gt p0, v1, :cond_19

    fill-array-data v0, :array_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x1144

    if-gt p0, v1, :cond_1a

    fill-array-data v0, :array_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0x11a8

    if-gt p0, v1, :cond_1b

    fill-array-data v0, :array_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0x139c

    if-gt p0, v1, :cond_1c

    fill-array-data v0, :array_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0x1784

    if-gt p0, v1, :cond_1d

    fill-array-data v0, :array_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0x1b6c

    if-gt p0, v1, :cond_1e

    fill-array-data v0, :array_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0x1f54

    if-gt p0, v1, :cond_1f

    fill-array-data v0, :array_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0x233c

    if-gt p0, v1, :cond_20

    fill-array-data v0, :array_20

    goto/16 :goto_0

    :cond_20
    const/16 v1, 0x2724

    if-gt p0, v1, :cond_21

    fill-array-data v0, :array_21

    goto/16 :goto_0

    :cond_21
    const/16 v1, 0x2918

    if-gt p0, v1, :cond_22

    fill-array-data v0, :array_22

    goto/16 :goto_0

    :cond_22
    fill-array-data v0, :array_23

    :goto_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x3ff48000
        -0x40a80000    # -0.84375f
        -0x42780000    # -0.06640625f
        -0x41500000    # -0.34375f
        0x3fcb8000    # 1.5898438f
        -0x41840000    # -0.24609375f
        0x0
        -0x40ae0000    # -0.8203125f
        0x3fe90000    # 1.8203125f
    .end array-data

    :array_1
    .array-data 4
        0x3ff50000    # 1.9140625f
        -0x40c30000    # -0.73828125f
        -0x41cc0000    # -0.17578125f
        -0x41600000    # -0.3125f
        0x3fe10000    # 1.7578125f
        -0x411c0000    # -0.4453125f
        -0x42900000    # -0.05859375f
        -0x409f0000    # -0.87890625f
        0x3ff80000    # 1.9375f
    .end array-data

    :array_2
    .array-data 4
        0x3ff80000    # 1.9375f
        -0x40a20000    # -0.8671875f
        -0x42700000    # -0.0703125f
        -0x41420000    # -0.37109375f
        0x3fd38000    # 1.6523438f
        -0x41700000    # -0.28125f
        -0x43600000    # -0.01953125f
        -0x409a0000    # -0.8984375f
        0x3ff58000    # 1.9179688f
    .end array-data

    :array_3
    .array-data 4
        0x3ff68000    # 1.9257812f
        -0x40a40000    # -0.859375f
        -0x42700000    # -0.0703125f
        -0x414a0000    # -0.35546875f
        0x3fce0000    # 1.609375f
        -0x417e0000    # -0.25390625f
        -0x44000000    # -0.0078125f
        -0x40a70000    # -0.84765625f
        0x3fed8000    # 1.8554688f
    .end array-data

    :array_4
    .array-data 4
        0x3ff68000    # 1.9257812f
        -0x40a50000    # -0.85546875f
        -0x42780000    # -0.06640625f
        -0x414e0000    # -0.34765625f
        0x3fcb0000    # 1.5859375f
        -0x418c0000
        0x0
        -0x40af0000    # -0.81640625f
        0x3fe88000    # 1.8164062f
    .end array-data

    :array_5
    .array-data 4
        0x3ff60000    # 1.921875f
        -0x40a50000    # -0.85546875f
        -0x42780000    # -0.06640625f
        -0x414e0000    # -0.34765625f
        0x3fcb0000    # 1.5859375f
        -0x418c0000
        0x0
        -0x40af0000    # -0.81640625f
        0x3fe88000    # 1.8164062f
    .end array-data

    :array_6
    .array-data 4
        0x3ff50000    # 1.9140625f
        -0x40a70000    # -0.84765625f
        -0x42780000    # -0.06640625f
        -0x41500000    # -0.34375f
        0x3fcb8000    # 1.5898438f
        -0x41880000    # -0.2421875f
        0x0
        -0x40af0000    # -0.81640625f
        0x3fe90000    # 1.8203125f
    .end array-data

    :array_7
    .array-data 4
        0x3ff50000    # 1.9140625f
        -0x40a80000    # -0.84375f
        -0x42780000    # -0.06640625f
        -0x41500000    # -0.34375f
        0x3fcb8000    # 1.5898438f
        -0x41880000    # -0.2421875f
        0x0
        -0x40af0000    # -0.81640625f
        0x3fe90000    # 1.8203125f
    .end array-data

    :array_8
    .array-data 4
        0x3ff50000    # 1.9140625f
        -0x40a70000    # -0.84765625f
        -0x42780000    # -0.06640625f
        -0x41500000    # -0.34375f
        0x3fcb8000    # 1.5898438f
        -0x41880000    # -0.2421875f
        0x0
        -0x40af0000    # -0.81640625f
        0x3fe90000    # 1.8203125f
    .end array-data

    :array_9
    .array-data 4
        0x3ff50000    # 1.9140625f
        -0x40a70000    # -0.84765625f
        -0x42780000    # -0.06640625f
        -0x414e0000    # -0.34765625f
        0x3fcb0000    # 1.5859375f
        -0x41880000    # -0.2421875f
        0x0
        -0x40af0000    # -0.81640625f
        0x3fe88000    # 1.8164062f
    .end array-data

    :array_a
    .array-data 4
        0x3ff58000    # 1.9179688f
        -0x40a60000
        -0x42780000    # -0.06640625f
        -0x414e0000    # -0.34765625f
        0x3fcb0000    # 1.5859375f
        -0x41880000    # -0.2421875f
        0x0
        -0x40af0000    # -0.81640625f
        0x3fe88000    # 1.8164062f
    .end array-data

    :array_b
    .array-data 4
        0x3ff40000    # 1.90625f
        -0x40a90000    # -0.83984375f
        -0x42780000    # -0.06640625f
        -0x41500000    # -0.34375f
        0x3fcb8000    # 1.5898438f
        -0x41840000    # -0.24609375f
        0x0
        -0x40ae0000    # -0.8203125f
        0x3fe90000    # 1.8203125f
    .end array-data

    :array_c
    .array-data 4
        0x3fee0000    # 1.859375f
        -0x40c00000    # -0.75f
        -0x42200000    # -0.109375f
        -0x41600000    # -0.3125f
        0x3fd10000    # 1.6328125f
        -0x415c0000    # -0.3203125f
        -0x43c00000    # -0.01171875f
        -0x40b30000    # -0.80078125f
        0x3fe80000    # 1.8125f
    .end array-data

    :array_d
    .array-data 4
        0x3ff30000    # 1.8984375f
        -0x40ad0000    # -0.82421875f
        -0x42700000    # -0.0703125f
        -0x41520000    # -0.33984375f
        0x3fcc8000
        -0x417c0000    # -0.2578125f
        -0x44800000    # -0.00390625f
        -0x40ae0000    # -0.8203125f
        0x3fe90000    # 1.8203125f
    .end array-data

    :array_e
    .array-data 4
        0x3fe88000    # 1.8164062f
        -0x40da0000    # -0.6484375f
        -0x41d00000    # -0.171875f
        -0x41760000    # -0.26953125f
        0x3fd88000    # 1.6914062f
        -0x41280000    # -0.421875f
        -0x43000000    # -0.03125f
        -0x40b80000    # -0.78125f
        0x3fe80000    # 1.8125f
    .end array-data

    :array_f
    .array-data 4
        0x3ff48000
        -0x40a90000    # -0.83984375f
        -0x42780000    # -0.06640625f
        -0x414e0000    # -0.34765625f
        0x3fcd0000    # 1.6015625f
        -0x417e0000    # -0.25390625f
        -0x44800000    # -0.00390625f
        -0x40ab0000
        0x3feb0000    # 1.8359375f
    .end array-data

    :array_10
    .array-data 4
        0x3ff48000
        -0x40a90000    # -0.83984375f
        -0x42780000    # -0.06640625f
        -0x414e0000    # -0.34765625f
        0x3fcc8000
        -0x41800000    # -0.25f
        -0x44800000    # -0.00390625f
        -0x40ab0000
        0x3fea8000
    .end array-data

    :array_11
    .array-data 4
        0x3ff40000    # 1.90625f
        -0x40a90000    # -0.83984375f
        -0x42780000    # -0.06640625f
        -0x414e0000    # -0.34765625f
        0x3fcc8000
        -0x41800000    # -0.25f
        -0x44800000    # -0.00390625f
        -0x40ac0000    # -0.828125f
        0x3fea0000    # 1.828125f
    .end array-data

    :array_12
    .array-data 4
        0x3ff48000
        -0x40a90000    # -0.83984375f
        -0x42780000    # -0.06640625f
        -0x414e0000    # -0.34765625f
        0x3fcc0000    # 1.59375f
        -0x41800000    # -0.25f
        0x0
        -0x40ad0000    # -0.82421875f
        0x3fe98000    # 1.8242188f
    .end array-data

    :array_13
    .array-data 4
        0x3ff48000
        -0x40a80000    # -0.84375f
        -0x42780000    # -0.06640625f
        -0x41500000    # -0.34375f
        0x3fcb8000    # 1.5898438f
        -0x41840000    # -0.24609375f
        0x0
        -0x40ae0000    # -0.8203125f
        0x3fe90000    # 1.8203125f
    .end array-data

    :array_14
    .array-data 4
        0x3ff48000
        -0x40a80000    # -0.84375f
        -0x42780000    # -0.06640625f
        -0x41500000    # -0.34375f
        0x3fcb8000    # 1.5898438f
        -0x41840000    # -0.24609375f
        0x0
        -0x40ae0000    # -0.8203125f
        0x3fe90000    # 1.8203125f
    .end array-data

    :array_15
    .array-data 4
        0x3ff38000    # 1.9023438f
        -0x40ab0000
        -0x42780000    # -0.06640625f
        -0x41520000    # -0.33984375f
        0x3fca8000    # 1.5820312f
        -0x41880000    # -0.2421875f
        0x0
        -0x40b10000    # -0.80859375f
        0x3fe78000    # 1.8085938f
    .end array-data

    :array_16
    .array-data 4
        0x3ff30000    # 1.8984375f
        -0x40ab0000
        -0x42780000    # -0.06640625f
        -0x41520000    # -0.33984375f
        0x3fca8000    # 1.5820312f
        -0x41880000    # -0.2421875f
        0x3b800000    # 0.00390625f
        -0x40b20000    # -0.8046875f
        0x3fe70000    # 1.8046875f
    .end array-data

    :array_17
    .array-data 4
        0x3ff20000    # 1.890625f
        -0x40ad0000    # -0.82421875f
        -0x42780000    # -0.06640625f
        -0x41540000    # -0.3359375f
        0x3fc98000    # 1.5742188f
        -0x41880000    # -0.2421875f
        0x3b800000    # 0.00390625f
        -0x40b30000    # -0.80078125f
        0x3fe60000    # 1.796875f
    .end array-data

    :array_18
    .array-data 4
        0x3ff18000    # 1.8867188f
        -0x40ae0000    # -0.8203125f
        -0x42780000    # -0.06640625f
        -0x41560000    # -0.33203125f
        0x3fc98000    # 1.5742188f
        -0x418c0000
        0x3b800000    # 0.00390625f
        -0x40b40000    # -0.796875f
        0x3fe50000    # 1.7890625f
    .end array-data

    :array_19
    .array-data 4
        0x3ff18000    # 1.8867188f
        -0x40ae0000    # -0.8203125f
        -0x42780000    # -0.06640625f
        -0x41560000    # -0.33203125f
        0x3fc98000    # 1.5742188f
        -0x41880000    # -0.2421875f
        0x3b800000    # 0.00390625f
        -0x40b40000    # -0.796875f
        0x3fe58000
    .end array-data

    :array_1a
    .array-data 4
        0x3fef8000
        -0x40b10000    # -0.80859375f
        -0x42780000    # -0.06640625f
        -0x41580000    # -0.328125f
        0x3fc88000    # 1.5664062f
        -0x418c0000
        0x3c000000    # 0.0078125f
        -0x40b70000    # -0.78515625f
        0x3fe38000    # 1.7773438f
    .end array-data

    :array_1b
    .array-data 4
        0x3fef0000    # 1.8671875f
        -0x40b20000    # -0.8046875f
        -0x42780000    # -0.06640625f
        -0x41580000    # -0.328125f
        0x3fc88000    # 1.5664062f
        -0x418c0000
        0x3c000000    # 0.0078125f
        -0x40b70000    # -0.78515625f
        0x3fe38000    # 1.7773438f
    .end array-data

    :array_1c
    .array-data 4
        0x3fee0000    # 1.859375f
        -0x40b40000    # -0.796875f
        -0x42800000    # -0.0625f
        -0x415a0000
        0x3fc80000    # 1.5625f
        -0x418c0000
        0x3c000000    # 0.0078125f
        -0x40b80000    # -0.78125f
        0x3fe28000    # 1.7695312f
    .end array-data

    :array_1d
    .array-data 4
        0x3fec0000    # 1.84375f
        -0x40b80000    # -0.78125f
        -0x42800000    # -0.0625f
        -0x415c0000    # -0.3203125f
        0x3fc78000
        -0x41880000    # -0.2421875f
        0x3c400000    # 0.01171875f
        -0x40ba0000    # -0.7734375f
        0x3fe18000    # 1.7617188f
    .end array-data

    :array_1e
    .array-data 4
        0x3feb0000    # 1.8359375f
        -0x40ba0000    # -0.7734375f
        -0x42800000    # -0.0625f
        -0x415e0000    # -0.31640625f
        0x3fc78000
        -0x41880000    # -0.2421875f
        0x3c400000    # 0.01171875f
        -0x40bb0000    # -0.76953125f
        0x3fe08000
    .end array-data

    :array_1f
    .array-data 4
        0x3fe40000    # 1.78125f
        -0x40c80000    # -0.71875f
        -0x42800000    # -0.0625f
        -0x41660000    # -0.30078125f
        0x3fc68000    # 1.5507812f
        -0x41800000    # -0.25f
        0x3ca00000    # 0.01953125f
        -0x40c00000    # -0.75f
        0x3fdd8000    # 1.7304688f
    .end array-data

    :array_20
    .array-data 4
        0x3fe90000    # 1.8203125f
        -0x40be0000    # -0.7578125f
        -0x42800000    # -0.0625f
        -0x41600000    # -0.3125f
        0x3fc70000    # 1.5546875f
        -0x41840000    # -0.24609375f
        0x3c800000    # 0.015625f
        -0x40bc0000    # -0.765625f
        0x3fe00000    # 1.75f
    .end array-data

    :array_21
    .array-data 4
        0x3fe00000    # 1.75f
        -0x40cf0000    # -0.69140625f
        -0x42900000    # -0.05859375f
        -0x416c0000    # -0.2890625f
        0x3fc60000    # 1.546875f
        -0x417c0000    # -0.2578125f
        0x3cc00000    # 0.0234375f
        -0x40c20000    # -0.7421875f
        0x3fdc0000    # 1.71875f
    .end array-data

    :array_22
    .array-data 4
        0x3fde8000    # 1.7382812f
        -0x40d20000    # -0.6796875f
        -0x42900000    # -0.05859375f
        -0x416c0000    # -0.2890625f
        0x3fc68000    # 1.5507812f
        -0x417a0000    # -0.26171875f
        0x3cc00000    # 0.0234375f
        -0x40c20000    # -0.7421875f
        0x3fdc0000    # 1.71875f
    .end array-data

    :array_23
    .array-data 4
        0x3fc40000    # 1.53125f
        -0x41020000    # -0.49609375f
        -0x42e00000    # -0.0390625f
        -0x41d80000    # -0.1640625f
        0x3faa0000    # 1.328125f
        -0x41d80000    # -0.1640625f
        0x3dc00000    # 0.09375f
        -0x41140000    # -0.4609375f
        0x3faf0000    # 1.3671875f
    .end array-data
.end method

.method public static ColorCorrection([F)[F
    .locals 14

    const-string v0, "pref_color_correction_red_key"

    const-string v1, "pref_color_correction_green_key"

    const-string v2, "pref_color_correction_blue_key"

    const-string v5, "1.0"

    invoke-static {v0, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x0

    aget v0, p0, v4

    mul-float/2addr v0, v3

    aput v0, p0, v4

    const/4 v4, 0x1

    aget v0, p0, v4

    mul-float/2addr v0, v3

    aput v0, p0, v4

    const/4 v4, 0x2

    aget v0, p0, v4

    mul-float/2addr v0, v3

    aput v0, p0, v4

    invoke-static {v1, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x3

    aget v0, p0, v4

    mul-float/2addr v0, v3

    aput v0, p0, v4

    const/4 v4, 0x4

    aget v0, p0, v4

    mul-float/2addr v0, v3

    aput v0, p0, v4

    const/4 v4, 0x5

    aget v0, p0, v4

    mul-float/2addr v0, v3

    aput v0, p0, v4

    invoke-static {v2, v5}, Lsgcam/lens/SharedPrefValues;->ConvertStringToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x6

    aget v0, p0, v4

    mul-float/2addr v0, v3

    aput v0, p0, v4

    const/4 v4, 0x7

    aget v0, p0, v4

    mul-float/2addr v0, v3

    aput v0, p0, v4

    const/16 v4, 0x8

    aget v0, p0, v4

    mul-float/2addr v0, v3

    aput v0, p0, v4

    return-object p0
.end method

.method public static CustomColorTransform()[F
    .locals 15

    sget-object v3, Lcom/Fix/ColorTransformKeys;->keys_camera_back:[Ljava/lang/String;

    sget-object v0, Lcom/Fix/Pref;->appSharedPreferences:Landroid/content/SharedPreferences;

    const/16 v2, 0x9

    new-array v2, v2, [F

    const/16 v4, 0x8

    const/4 v6, 0x0

    :cond_0
    aget-object v1, v3, v4

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "1.0"

    :goto_0
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_0

    return-object v2
.end method

.method public static getFloatValue(Ljava/lang/String;)F
    .locals 2

    sget-object v0, Lcom/Fix/Pref;->appSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/Fix/Pref;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/Fix/Pref;->appSharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "1.0"

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static getPseudoCT(Lcom/google/googlex/gcam/FloatArray9;Lkou;)Lcom/google/googlex/gcam/FloatArray9;
    .locals 7

    invoke-static {}, Lsgcam/Shamim;->setColorTransform()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-static {v0}, Lsgcam/Shamim;->ConvertCstToFloatArray(Landroid/hardware/camera2/params/ColorSpaceTransform;)[F

    move-result-object p1

    goto/16 :goto_0

    :pswitch_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-static {v0}, Lsgcam/Shamim;->ConvertCstToFloatArray(Landroid/hardware/camera2/params/ColorSpaceTransform;)[F

    move-result-object p1

    goto/16 :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/Fix/ColorTransform;->ordinary(Lkou;)[F

    move-result-object p1

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/Fix/ColorTransform;->Arnova(Lkou;)[F

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lcom/Fix/ColorTransform;->mod_1(Lkou;)[F

    move-result-object p1

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x9

    new-array p1, v0, [F

    fill-array-data p1, :array_0

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x9

    new-array p1, v0, [F

    fill-array-data p1, :array_1

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x9

    new-array p1, v0, [F

    fill-array-data p1, :array_2

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x9

    new-array p1, v0, [F

    fill-array-data p1, :array_3

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x9

    new-array p1, v0, [F

    fill-array-data p1, :array_4

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x9

    new-array p1, v0, [F

    fill-array-data p1, :array_5

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x9

    new-array p1, v0, [F

    fill-array-data p1, :array_6

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x9

    new-array p1, v0, [F

    fill-array-data p1, :array_7

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x9

    new-array p1, v0, [F

    fill-array-data p1, :array_8

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x9

    new-array p1, v0, [F

    fill-array-data p1, :array_9

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x9

    new-array p1, v0, [F

    fill-array-data p1, :array_a

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x9

    new-array p1, v0, [F

    fill-array-data p1, :array_b

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x9

    new-array p1, v0, [F

    fill-array-data p1, :array_c

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x9

    new-array p1, v0, [F

    fill-array-data p1, :array_d

    goto :goto_0

    :pswitch_12
    invoke-static {}, Lcom/Fix/ColorTransform;->CustomColorTransform()[F

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/Fix/ColorTransform;->ColorCorrection([F)[F

    move-result-object p1

    invoke-static {p1}, Lcom/juliantsependa/ColorTune;->ColorMod1([F)[F

    move-result-object p1

    const-string v1, "CCT"

    invoke-static {v1}, Lsgcam/lens/LensValue;->SetLensValueLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p0}, Lsgcam/Shamim;->getCctLog(Ljava/lang/String;[FLcom/google/googlex/gcam/FloatArray9;)V

    invoke-static {p1, p0}, Lsgcam/Shamim;->ConvertFArrayToFArray9([FLcom/google/googlex/gcam/FloatArray9;)Lcom/google/googlex/gcam/FloatArray9;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    :array_0
    .array-data 4
        0x3fe8c5eb
        -0x40a96085
        0x3ca27ab4    # 0.0198339f
        -0x41836263
        0x3fc93be2
        -0x41595f24
        -0x43c98f2b
        -0x40d0b35f
        0x3fd91340    # 1.6959f
    .end array-data

    :array_1
    .array-data 4
        0x3ff0c49c    # 1.881f
        -0x409ed917    # -0.8795f
        -0x453b645a    # -0.0015f
        -0x416ecbfb    # -0.2836f
        0x3fd2cd9f    # 1.6469f
        -0x4145fd8b    # -0.3633f
        -0x42e9ad43    # -0.0367f
        -0x40c81062    # -0.7185f
        0x3fe0aa65    # 1.7552f
    .end array-data

    :array_2
    .array-data 4
        0x3fc7089f
        -0x410dae36
        -0x4258bd3d
        -0x426f2794
        0x3f9ca6a3
        -0x41e3371b
        0x3dceca9e
        -0x40ba9257
        0x3fd5ca2b
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3fd70000    # 1.6796875f
        -0x40900000    # -0.9375f
        0x3e73b646    # 0.238f
        -0x41e80000    # -0.1484375f
        0x3f858106    # 1.043f
        0x3db00000    # 0.0859375f
        0x3df50000
        -0x40960000    # -0.9140625f
        0x3fed70a4    # 1.855f
    .end array-data

    :array_6
    .array-data 4
        0x3fa63bcd    # 1.2987f
        -0x41b98c7e    # -0.1938f
        -0x4237e910    # -0.0977f
        -0x41816f00    # -0.2486f
        0x3fc6cf42    # 1.5532f
        -0x4167bb30    # -0.2974f
        -0x42b33333    # -0.05f
        -0x4147fcb9    # -0.3594f
        0x3fb292a3    # 1.3951f
    .end array-data

    :array_7
    .array-data 4
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x3f51eb85    # 0.82f
        0x3f51eb85    # 0.82f
        0x3f51eb85    # 0.82f
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
    .end array-data

    :array_8
    .array-data 4
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x3f59999a    # 0.85f
        0x3f59999a    # 0.85f
        0x3f59999a    # 0.85f
        0x3f2e147b    # 0.68f
        0x3f2e147b    # 0.68f
        0x3f2e147b    # 0.68f
    .end array-data

    :array_9
    .array-data 4
        0x3fd70000    # 1.6796875f
        -0x40900000    # -0.9375f
        0x3e73b646    # 0.238f
        -0x41e80000    # -0.1484375f
        0x3f858106    # 1.043f
        0x3db00000    # 0.0859375f
        0x3df50000
        -0x40960000    # -0.9140625f
        0x3fe7ae14    # 1.81f
    .end array-data

    :array_a
    .array-data 4
        0x3fecfffc
        -0x40770004
        0x3e600000    # 0.21875f
        -0x42e00086    # -0.039062f
        0x3f820000    # 1.015625f
        0x3cc0010c    # 0.023438f
        0x3da00000    # 0.078125f
        -0x40570004
        0x400f8002
    .end array-data

    :array_b
    .array-data 4
        0x3fd0fffc
        -0x40c1fff8
        0x3df00043    # 0.117188f
        -0x42e00086    # -0.039062f
        0x3f84fffc
        0x0
        0x3e07ffde
        -0x40c60008
        0x3fcc0000    # 1.59375f
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_d
    .array-data 4
        0x3fb30004
        -0x41280000    # -0.421875f
        0x3cc0010c    # 0.023438f
        -0x41e7ffde
        0x3f9a0000    # 1.203125f
        -0x42800000    # -0.0625f
        0x3d1fff7a    # 0.039062f
        -0x41500000    # -0.34375f
        0x3fa70004
    .end array-data
.end method

.method public static mod_1(Lkou;)[F
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v1, 0x46

    const/16 v0, 0x9

    new-array v0, v0, [F

    if-gt p0, v1, :cond_0

    fill-array-data v0, :array_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x78

    if-gt p0, v1, :cond_1

    fill-array-data v0, :array_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xdc

    if-gt p0, v1, :cond_2

    fill-array-data v0, :array_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x1a4

    if-gt p0, v1, :cond_3

    fill-array-data v0, :array_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x334

    if-gt p0, v1, :cond_4

    fill-array-data v0, :array_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x4c4

    if-gt p0, v1, :cond_5

    fill-array-data v0, :array_5

    goto :goto_0

    :cond_5
    const/16 v1, 0x654

    if-gt p0, v1, :cond_6

    fill-array-data v0, :array_6

    goto :goto_0

    :cond_6
    const/16 v1, 0x8ac

    if-gt p0, v1, :cond_7

    fill-array-data v0, :array_7

    goto :goto_0

    :cond_7
    const/16 v1, 0xc62

    if-gt p0, v1, :cond_8

    fill-array-data v0, :array_8

    goto :goto_0

    :cond_8
    fill-array-data v0, :array_9

    :goto_0
    return-object v0

    :array_0
    .array-data 4
        0x3fd70000    # 1.6796875f
        -0x40900000    # -0.9375f
        0x3e840000    # 0.2578125f
        -0x41e80000    # -0.1484375f
        0x3f880000    # 1.0625f
        0x3db00000    # 0.0859375f
        0x3df50000
        -0x40960000    # -0.9140625f
        0x3fea0000    # 1.828125f
    .end array-data

    :array_1
    .array-data 4
        0x3fd70000    # 1.6796875f
        -0x40900000    # -0.9375f
        0x3e840000    # 0.2578125f
        -0x41e80000    # -0.1484375f
        0x3f880000    # 1.0625f
        0x3db00000    # 0.0859375f
        0x3deb0000
        -0x40940000    # -0.921875f
        0x3fea0000    # 1.828125f
    .end array-data

    :array_2
    .array-data 4
        0x3fd60000    # 1.671875f
        -0x40940000    # -0.921875f
        0x3e800000    # 0.25f
        -0x41e80000    # -0.1484375f
        0x3f890000    # 1.0703125f
        0x3da00000    # 0.078125f
        0x3de10000
        -0x40980000    # -0.90625f
        0x3fe90000    # 1.8203125f
    .end array-data

    :array_3
    .array-data 4
        0x3fd10000    # 1.6328125f
        -0x40b60000    # -0.7890625f
        0x3e200000    # 0.15625f
        -0x41e00000    # -0.15625f
        0x3f930000
        0x3c000000    # 0.0078125f
        0x3dcc0000
        -0x40ac0000    # -0.828125f
        0x3fe00000    # 1.75f
    .end array-data

    :array_4
    .array-data 4
        0x3fd40000    # 1.65625f
        -0x40a40000    # -0.859375f
        0x3e500000    # 0.203125f
        -0x41e00000    # -0.15625f
        0x3f8e0000    # 1.109375f
        0x3d400000    # 0.046875f
        0x3dd00000    # 0.1015625f
        -0x40a20000    # -0.8671875f
        0x3fe50000    # 1.7890625f
    .end array-data

    :array_5
    .array-data 4
        0x3fd30000    # 1.6484375f
        -0x40a80000    # -0.84375f
        0x3e480000    # 0.1953125f
        -0x41e00000    # -0.15625f
        0x3f900000    # 1.125f
        0x3d000000    # 0.03125f
        0x3dc80000    # 0.09765625f
        -0x40a40000    # -0.859375f
        0x3fe30000    # 1.7734375f
    .end array-data

    :array_6
    .array-data 4
        0x3fd20000    # 1.640625f
        -0x40ae0000    # -0.8203125f
        0x3e380000    # 0.1796875f
        -0x41e00000    # -0.15625f
        0x3f920000    # 1.140625f
        0x3cc00000    # 0.0234375f
        0x3dc80000    # 0.09765625f
        -0x40a80000    # -0.84375f
        0x3fe20000    # 1.765625f
    .end array-data

    :array_7
    .array-data 4
        0x3fd70000    # 1.6796875f
        -0x40900000    # -0.9375f
        0x3e840000    # 0.2578125f
        -0x41e80000    # -0.1484375f
        0x3f880000    # 1.0625f
        0x3db00000    # 0.0859375f
        0x3de10000
        -0x40960000    # -0.9140625f
        0x3fea0000    # 1.828125f
    .end array-data

    :array_8
    .array-data 4
        0x3fd60000    # 1.671875f
        -0x40940000    # -0.921875f
        0x3e800000    # 0.25f
        -0x41e80000    # -0.1484375f
        0x3f880000    # 1.0625f
        0x3db00000    # 0.0859375f
        0x3de10000
        -0x40960000    # -0.9140625f
        0x3fe90000    # 1.8203125f
    .end array-data

    :array_9
    .array-data 4
        0x3fd70000    # 1.6796875f
        -0x408e0000    # -0.9453125f
        0x3e840000    # 0.2578125f
        -0x41e80000    # -0.1484375f
        0x3f880000    # 1.0625f
        0x3db00000    # 0.0859375f
        0x3de10000
        -0x40940000    # -0.921875f
        0x3fea0000    # 1.828125f
    .end array-data
.end method

.method public static ordinary(Lkou;)[F
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v1, 0x46

    const/16 v0, 0x9

    new-array v0, v0, [F

    if-gt p0, v1, :cond_0

    fill-array-data v0, :array_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x78

    if-gt p0, v1, :cond_1

    fill-array-data v0, :array_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xdc

    if-gt p0, v1, :cond_2

    fill-array-data v0, :array_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x1a4

    if-gt p0, v1, :cond_3

    fill-array-data v0, :array_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x334

    if-gt p0, v1, :cond_4

    fill-array-data v0, :array_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x4c4

    if-gt p0, v1, :cond_5

    fill-array-data v0, :array_5

    goto :goto_0

    :cond_5
    const/16 v1, 0x654

    if-gt p0, v1, :cond_6

    fill-array-data v0, :array_6

    goto :goto_0

    :cond_6
    const/16 v1, 0x8ac

    if-gt p0, v1, :cond_7

    fill-array-data v0, :array_7

    goto :goto_0

    :cond_7
    const/16 v1, 0xc62

    if-gt p0, v1, :cond_8

    fill-array-data v0, :array_8

    goto :goto_0

    :cond_8
    fill-array-data v0, :array_9

    :goto_0
    return-object v0

    :array_0
    .array-data 4
        0x3fd70000    # 1.6796875f
        -0x40900000    # -0.9375f
        0x3e840000    # 0.2578125f
        -0x41e80000    # -0.1484375f
        0x3f880000    # 1.0625f
        0x3db00000    # 0.0859375f
        0x3dc00000    # 0.09375f
        -0x40960000    # -0.9140625f
        0x3fea0000    # 1.828125f
    .end array-data

    :array_1
    .array-data 4
        0x3fd70000    # 1.6796875f
        -0x40900000    # -0.9375f
        0x3e840000    # 0.2578125f
        -0x41e80000    # -0.1484375f
        0x3f880000    # 1.0625f
        0x3db00000    # 0.0859375f
        0x3dc00000    # 0.09375f
        -0x40940000    # -0.921875f
        0x3fea0000    # 1.828125f
    .end array-data

    :array_2
    .array-data 4
        0x3fd60000    # 1.671875f
        -0x40940000    # -0.921875f
        0x3e800000    # 0.25f
        -0x41e80000    # -0.1484375f
        0x3f890000    # 1.0703125f
        0x3da00000    # 0.078125f
        0x3dc00000    # 0.09375f
        -0x40980000    # -0.90625f
        0x3fe90000    # 1.8203125f
    .end array-data

    :array_3
    .array-data 4
        0x3fd10000    # 1.6328125f
        -0x40b60000    # -0.7890625f
        0x3e200000    # 0.15625f
        -0x41e00000    # -0.15625f
        0x3f930000
        0x3c000000    # 0.0078125f
        0x3da00000    # 0.078125f
        -0x40ac0000    # -0.828125f
        0x3fe00000    # 1.75f
    .end array-data

    :array_4
    .array-data 4
        0x3fd40000    # 1.65625f
        -0x40a40000    # -0.859375f
        0x3e500000    # 0.203125f
        -0x41e00000    # -0.15625f
        0x3f8e0000    # 1.109375f
        0x3d400000    # 0.046875f
        0x3db00000    # 0.0859375f
        -0x40a20000    # -0.8671875f
        0x3fe50000    # 1.7890625f
    .end array-data

    :array_5
    .array-data 4
        0x3fd30000    # 1.6484375f
        -0x40a80000    # -0.84375f
        0x3e480000    # 0.1953125f
        -0x41e00000    # -0.15625f
        0x3f900000    # 1.125f
        0x3d000000    # 0.03125f
        0x3da00000    # 0.078125f
        -0x40a40000    # -0.859375f
        0x3fe30000    # 1.7734375f
    .end array-data

    :array_6
    .array-data 4
        0x3fd20000    # 1.640625f
        -0x40ae0000    # -0.8203125f
        0x3e380000    # 0.1796875f
        -0x41e00000    # -0.15625f
        0x3f920000    # 1.140625f
        0x3cc00000    # 0.0234375f
        0x3da00000    # 0.078125f
        -0x40a80000    # -0.84375f
        0x3fe20000    # 1.765625f
    .end array-data

    :array_7
    .array-data 4
        0x3fd70000    # 1.6796875f
        -0x40900000    # -0.9375f
        0x3e840000    # 0.2578125f
        -0x41e80000    # -0.1484375f
        0x3f880000    # 1.0625f
        0x3db00000    # 0.0859375f
        0x3dc00000    # 0.09375f
        -0x40960000    # -0.9140625f
        0x3fea0000    # 1.828125f
    .end array-data

    :array_8
    .array-data 4
        0x3fd60000    # 1.671875f
        -0x40940000    # -0.921875f
        0x3e800000    # 0.25f
        -0x41e80000    # -0.1484375f
        0x3f880000    # 1.0625f
        0x3db00000    # 0.0859375f
        0x3dc00000    # 0.09375f
        -0x40960000    # -0.9140625f
        0x3fe90000    # 1.8203125f
    .end array-data

    :array_9
    .array-data 4
        0x3fd70000    # 1.6796875f
        -0x408e0000    # -0.9453125f
        0x3e840000    # 0.2578125f
        -0x41e80000    # -0.1484375f
        0x3f880000    # 1.0625f
        0x3db00000    # 0.0859375f
        0x3dc00000    # 0.09375f
        -0x40940000    # -0.921875f
        0x3fea0000    # 1.828125f
    .end array-data
.end method

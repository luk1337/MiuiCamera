.class public Lcom/android/camera/effect/renders/InstagramRiseEffectRender;
.super Lcom/android/camera/effect/renders/RGBTransEffectRender;
.source "InstagramRiseEffectRender.java"


# static fields
.field private static final sCurveBLut:[I

.field private static final sCurveGLut:[I

.field private static sCurveRGBLutBuffer:Ljava/nio/IntBuffer;

.field private static final sCurveRLut:[I

.field private static final sSelfRGBLut:[I

.field private static sSelfRGBLutBuffer:Ljava/nio/IntBuffer;


# instance fields
.field protected mCenPos:[F

.field protected mCon:F

.field protected mGCenPos:[F

.field protected mRadius:F

.field protected mStd:F

.field protected mUniformCenPosH:I

.field protected mUniformConH:I

.field protected mUniformGCenPosH:I

.field protected mUniformRadiusH:I

.field protected mUniformStdH:I

.field protected mUniformWHH:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 23
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sCurveRLut:[I

    .line 42
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sCurveGLut:[I

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sCurveBLut:[I

    .line 80
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sSelfRGBLut:[I

    .line 9
    return-void

    .line 23
    nop

    :array_0
    .array-data 4
        0x23
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0x5c
        0x5d
        0x5d
        0x5e
        0x5f
        0x60
        0x61
        0x62
        0x63
        0x64
        0x65
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x79
        0x7a
        0x7b
        0x7c
        0x7d
        0x7e
        0x7e
        0x7f
        0x80
        0x81
        0x82
        0x83
        0x83
        0x84
        0x85
        0x86
        0x87
        0x88
        0x88
        0x89
        0x8a
        0x8b
        0x8c
        0x8d
        0x8d
        0x8e
        0x8f
        0x90
        0x91
        0x92
        0x93
        0x94
        0x94
        0x95
        0x96
        0x97
        0x98
        0x99
        0x9a
        0x9b
        0x9c
        0x9c
        0x9d
        0x9e
        0x9f
        0xa0
        0xa1
        0xa2
        0xa3
        0xa4
        0xa5
        0xa6
        0xa7
        0xa8
        0xa9
        0xaa
        0xab
        0xac
        0xad
        0xae
        0xaf
        0xb0
        0xb1
        0xb1
        0xb2
        0xb3
        0xb4
        0xb5
        0xb6
        0xb7
        0xb8
        0xb9
        0xba
        0xbb
        0xbc
        0xbd
        0xbe
        0xc0
        0xc1
        0xc2
        0xc3
        0xc4
        0xc5
        0xc6
        0xc7
        0xc8
        0xc9
        0xca
        0xcb
        0xcc
        0xcd
        0xce
        0xcf
        0xd0
        0xd2
        0xd3
        0xd4
        0xd5
        0xd6
        0xd7
        0xd8
        0xd9
        0xda
        0xdb
        0xdd
        0xde
        0xdf
        0xe0
        0xe1
        0xe2
        0xe3
        0xe4
        0xe5
        0xe6
        0xe7
        0xe8
        0xe9
        0xea
        0xeb
        0xec
        0xed
        0xee
        0xee
        0xef
        0xf0
        0xf1
        0xf2
        0xf2
        0xf3
        0xf4
        0xf4
        0xf5
        0xf5
        0xf6
        0xf6
        0xf7
        0xf7
        0xf8
        0xf8
        0xf9
        0xf9
        0xf9
        0xfa
        0xfa
        0xfb
        0xfb
        0xfb
        0xfc
        0xfc
        0xfc
        0xfc
        0xfd
        0xfd
        0xfd
        0xfd
        0xfe
        0xfe
        0xfe
        0xff
    .end array-data

    .line 42
    :array_1
    .array-data 4
        0x17
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0x5c
        0x5d
        0x5d
        0x5e
        0x5f
        0x60
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0x7b
        0x7c
        0x7d
        0x7e
        0x7f
        0x80
        0x81
        0x82
        0x83
        0x84
        0x85
        0x86
        0x87
        0x88
        0x89
        0x8a
        0x8b
        0x8c
        0x8d
        0x8e
        0x8e
        0x8f
        0x90
        0x91
        0x92
        0x93
        0x94
        0x95
        0x96
        0x97
        0x98
        0x99
        0x9a
        0x9b
        0x9c
        0x9d
        0x9e
        0x9f
        0xa0
        0xa1
        0xa2
        0xa3
        0xa4
        0xa5
        0xa6
        0xa7
        0xa8
        0xa9
        0xaa
        0xab
        0xad
        0xae
        0xaf
        0xb0
        0xb1
        0xb2
        0xb3
        0xb4
        0xb5
        0xb6
        0xb7
        0xb8
        0xb9
        0xba
        0xbb
        0xbc
        0xbd
        0xbf
        0xc0
        0xc1
        0xc2
        0xc3
        0xc4
        0xc5
        0xc6
        0xc7
        0xc8
        0xc9
        0xca
        0xcb
        0xcc
        0xcd
        0xcf
        0xd0
        0xd1
        0xd2
        0xd3
        0xd4
        0xd5
        0xd6
        0xd7
        0xd8
        0xd9
        0xda
        0xdb
        0xdc
        0xdd
        0xde
        0xdf
        0xe0
        0xe1
        0xe2
        0xe2
        0xe3
        0xe4
        0xe5
        0xe6
        0xe7
        0xe8
        0xe9
        0xe9
        0xea
        0xeb
        0xec
        0xed
        0xed
        0xee
        0xef
        0xef
        0xf0
        0xf1
        0xf1
        0xf2
        0xf3
        0xf3
        0xf4
        0xf4
        0xf5
        0xf5
        0xf6
        0xf7
        0xf7
        0xf8
        0xf8
        0xf9
        0xf9
        0xfa
        0xfa
        0xfb
        0xfb
        0xfc
        0xfc
        0xfd
        0xfd
        0xfe
        0xfe
        0xff
    .end array-data

    .line 61
    :array_2
    .array-data 4
        0x22
        0x22
        0x23
        0x23
        0x24
        0x24
        0x25
        0x25
        0x26
        0x26
        0x27
        0x28
        0x28
        0x29
        0x29
        0x2a
        0x2a
        0x2b
        0x2c
        0x2c
        0x2d
        0x2d
        0x2e
        0x2f
        0x2f
        0x30
        0x30
        0x31
        0x32
        0x32
        0x33
        0x34
        0x35
        0x35
        0x36
        0x37
        0x37
        0x38
        0x39
        0x3a
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0x5c
        0x5d
        0x5d
        0x5e
        0x5f
        0x60
        0x61
        0x62
        0x63
        0x64
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x77
        0x78
        0x79
        0x7a
        0x7b
        0x7c
        0x7c
        0x7d
        0x7e
        0x7f
        0x80
        0x81
        0x81
        0x82
        0x83
        0x84
        0x85
        0x86
        0x86
        0x87
        0x88
        0x89
        0x8a
        0x8a
        0x8b
        0x8c
        0x8d
        0x8e
        0x8e
        0x8f
        0x90
        0x91
        0x92
        0x92
        0x93
        0x94
        0x95
        0x96
        0x96
        0x97
        0x98
        0x99
        0x9a
        0x9a
        0x9b
        0x9c
        0x9d
        0x9e
        0x9f
        0x9f
        0xa0
        0xa1
        0xa2
        0xa3
        0xa3
        0xa4
        0xa5
        0xa6
        0xa7
        0xa8
        0xa9
        0xa9
        0xaa
        0xab
        0xac
        0xad
        0xae
        0xaf
        0xb0
        0xb1
        0xb2
        0xb3
        0xb3
        0xb4
        0xb5
        0xb6
        0xb7
        0xb8
        0xb9
        0xba
        0xbc
        0xbd
        0xbe
        0xbf
        0xc0
        0xc1
        0xc2
        0xc3
        0xc4
        0xc5
        0xc6
        0xc8
        0xc9
        0xca
        0xcb
        0xcc
        0xcd
        0xcf
        0xd0
        0xd1
        0xd2
        0xd3
        0xd4
        0xd5
        0xd7
        0xd8
        0xd9
        0xda
        0xdb
        0xdc
        0xdd
        0xde
        0xe0
        0xe1
        0xe2
        0xe3
        0xe4
        0xe5
        0xe6
        0xe7
        0xe8
        0xe9
        0xea
        0xeb
        0xec
        0xed
        0xee
        0xef
        0xf0
        0xf1
        0xf2
        0xf3
        0xf3
        0xf4
        0xf5
        0xf6
        0xf7
        0xf8
        0xf9
        0xfa
        0xfb
        0xfc
        0xfd
        0xfe
        0xff
    .end array-data

    .line 80
    :array_3
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
        0x9
        0x9
        0xa
        0xb
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x10
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x1a
        0x1b
        0x1c
        0x1e
        0x1f
        0x21
        0x22
        0x24
        0x25
        0x27
        0x29
        0x2a
        0x2c
        0x2e
        0x2f
        0x31
        0x33
        0x34
        0x36
        0x38
        0x3a
        0x3b
        0x3d
        0x3f
        0x41
        0x43
        0x44
        0x46
        0x48
        0x4a
        0x4b
        0x4d
        0x4f
        0x51
        0x53
        0x54
        0x56
        0x58
        0x5a
        0x5b
        0x5d
        0x5f
        0x60
        0x62
        0x64
        0x66
        0x67
        0x69
        0x6b
        0x6c
        0x6e
        0x6f
        0x71
        0x72
        0x74
        0x76
        0x77
        0x79
        0x7a
        0x7b
        0x7d
        0x7e
        0x80
        0x81
        0x82
        0x84
        0x85
        0x86
        0x87
        0x89
        0x8a
        0x8b
        0x8c
        0x8e
        0x8f
        0x90
        0x91
        0x92
        0x93
        0x94
        0x95
        0x96
        0x98
        0x99
        0x9a
        0x9b
        0x9c
        0x9d
        0x9e
        0x9f
        0x9f
        0xa0
        0xa1
        0xa2
        0xa3
        0xa4
        0xa5
        0xa6
        0xa7
        0xa8
        0xa8
        0xa9
        0xaa
        0xab
        0xac
        0xac
        0xad
        0xae
        0xaf
        0xb0
        0xb0
        0xb1
        0xb2
        0xb3
        0xb3
        0xb4
        0xb5
        0xb5
        0xb6
        0xb7
        0xb8
        0xb8
        0xb9
        0xba
        0xba
        0xbb
        0xbc
        0xbc
        0xbd
        0xbd
        0xbe
        0xbf
        0xbf
        0xc0
        0xc1
        0xc1
        0xc2
        0xc2
        0xc3
        0xc3
        0xc4
        0xc5
        0xc5
        0xc6
        0xc6
        0xc7
        0xc7
        0xc8
        0xc8
        0xc9
        0xc9
        0xca
        0xcb
        0xcb
        0xcb
        0xcc
        0xcc
        0xcd
        0xcd
        0xce
        0xce
        0xcf
        0xcf
        0xd0
        0xd0
        0xd1
        0xd1
        0xd2
        0xd2
        0xd3
        0xd3
        0xd3
        0xd4
        0xd4
        0xd5
        0xd5
        0xd6
        0xd6
        0xd7
        0xd7
        0xd8
        0xd8
        0xd9
        0xd9
        0xda
        0xda
        0xda
        0xdb
        0xdb
        0xdc
        0xdc
        0xdd
        0xde
        0xde
        0xdf
        0xdf
        0xe0
        0xe0
        0xe1
        0xe1
        0xe2
        0xe2
        0xe3
        0xe3
        0xe4
        0xe4
        0xe5
        0xe6
        0xe6
        0xe7
        0xe7
        0xe8
        0xe8
        0xe9
        0xe9
        0xea
        0xeb
    .end array-data
.end method

.method protected constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 2
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x2

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/RGBTransEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 17
    const/high16 v0, -0x3f200000    # -7.0f

    iput v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mCon:F

    .line 18
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mCenPos:[F

    .line 19
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mGCenPos:[F

    .line 20
    const v0, 0x3f68f5c3    # 0.91f

    iput v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mRadius:F

    .line 21
    const v0, 0x3e71a9fc    # 0.236f

    iput v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mStd:F

    .line 138
    return-void

    .line 18
    nop

    :array_0
    .array-data 4
        0x3f11eb85    # 0.57f
        0x3f14d6a1    # 0.5814f
    .end array-data

    .line 19
    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f23d70a    # 0.64f
    .end array-data
.end method

.method public static create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;
    .locals 4
    .param p0, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p1, "id"    # I

    .prologue
    .line 126
    new-instance v0, Lcom/android/camera/effect/renders/CurveEffectRender;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/effect/renders/CurveEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 127
    .local v0, "firstPassRender":Lcom/android/camera/effect/renders/CurveEffectRender;
    invoke-static {}, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->getCurveRGBLutBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/effect/renders/CurveEffectRender;->setRGBTransLutBuffer(Ljava/nio/IntBuffer;)V

    .line 128
    new-instance v2, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 129
    .local v2, "secondPassRender":Lcom/android/camera/effect/renders/InstagramRiseEffectRender;
    invoke-static {}, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->getSelfRGBLutBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->setRGBTransLutBuffer(Ljava/nio/IntBuffer;)V

    .line 130
    new-instance v1, Lcom/android/camera/effect/renders/PipeRenderPair;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    .line 131
    .local v1, "pipeRender":Lcom/android/camera/effect/renders/PipeRenderPair;
    return-object v1
.end method

.method private static getCurveRGBLutBuffer()Ljava/nio/IntBuffer;
    .locals 4

    .prologue
    .line 103
    sget-object v2, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sCurveRGBLutBuffer:Ljava/nio/IntBuffer;

    if-nez v2, :cond_1

    .line 104
    sget-object v2, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sCurveRLut:[I

    array-length v2, v2

    new-array v1, v2, [I

    .line 105
    .local v1, "rgbLut":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 106
    sget-object v2, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sCurveBLut:[I

    aget v2, v2, v0

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sCurveGLut:[I

    aget v3, v3, v0

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sCurveRLut:[I

    aget v3, v3, v0

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v2

    sput-object v2, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sCurveRGBLutBuffer:Ljava/nio/IntBuffer;

    .line 110
    :cond_1
    sget-object v2, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sCurveRGBLutBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 111
    sget-object v2, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sCurveRGBLutBuffer:Ljava/nio/IntBuffer;

    return-object v2
.end method

.method private static getSelfRGBLutBuffer()Ljava/nio/IntBuffer;
    .locals 4

    .prologue
    .line 115
    sget-object v1, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sSelfRGBLutBuffer:Ljava/nio/IntBuffer;

    if-nez v1, :cond_1

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sSelfRGBLut:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 117
    sget-object v1, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sSelfRGBLut:[I

    sget-object v2, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sSelfRGBLut:[I

    aget v2, v2, v0

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sSelfRGBLut:[I

    aget v3, v3, v0

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sSelfRGBLut:[I

    aget v3, v3, v0

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    sget-object v1, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sSelfRGBLut:[I

    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    sput-object v1, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sSelfRGBLutBuffer:Ljava/nio/IntBuffer;

    .line 121
    :cond_1
    sget-object v1, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sSelfRGBLutBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 122
    sget-object v1, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->sSelfRGBLutBuffer:Ljava/nio/IntBuffer;

    return-object v1
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string/jumbo v0, "precision mediump int; \nprecision mediump float; \nuniform sampler2D sTexture; \nuniform sampler2D sRGBLut; \nvarying vec2 vTexCoord; \nuniform float uAlpha; \nuniform float uCon; \nuniform vec2  uCenPos; \nuniform vec2  uGCenPos; \nuniform float uRadius; \nuniform float uStd; \nuniform vec2  uWH; \nvec3 CProcess(vec3 color) { \n    vec3 dstcolor; \n    float cValue = uCon/100.0 + 1.0; \n    dstcolor = clamp((color - 0.5) *cValue + 0.5,0.0,1.0); \n    return dstcolor; \n} \nfloat WJianbianProcess() { \n    float disx,disy,dis,f1,f2,f,pf = uWH.x / uWH.y,x,y; \n    f1 = max(uCenPos.x,1.0 - uCenPos.x);f2 = max(uCenPos.y,1.0 - uCenPos.y); \n    if (pf < 1.0) { \n        disx = (vTexCoord.x - uCenPos.x) * (vTexCoord.x - uCenPos.x); \n        if (vTexCoord.y/pf < uCenPos.y) { \n            y = vTexCoord.y; \n        } else if ((1.0 - vTexCoord.y)/pf < (1.0 - uCenPos.y)) { \n            y = pf - (1.0 - vTexCoord.y); \n        } else { \n            y = uCenPos.y * pf; \n        } \n        disy = (y/pf - uCenPos.y) * (y/pf - uCenPos.y); \n    } else { \n        disy = (vTexCoord.y - uCenPos.y) * (vTexCoord.y - uCenPos.y); \n        if (vTexCoord.x * pf < uCenPos.x) { \n            x = vTexCoord.x; \n        } else if ((1.0 - vTexCoord.x)*pf < (1.0 - uCenPos.x)) { \n            x = 1.0/pf - (1.0 - vTexCoord.x); \n        } else { \n            x = uCenPos.x / pf; \n        } \n        disx = (x * pf - uCenPos.x) * (x * pf - uCenPos.x); \n    } \n    dis = disx + disy; \n    f1 = sqrt(dis)/(sqrt(f1 * f1 + f2 * f2) * uRadius); \n    if (f1 > 1.0) { \n        f = 0.4; \n    } else { \n        f2 = 0.9908 * pow(f1,3.0) -1.4934 * pow(f1,2.0) -0.4974 * f1 + 1.0; \n        f = 0.6 * f2 + 0.4; \n    } \n    return f; \n} \nfloat WEraserProcess() { \n    float disx,disy,dis,f1,f2,f,pf = uWH.x / uWH.y,x,y,std1; \n    f1 = max(uGCenPos.x,1.0 - uGCenPos.x);f2 = max(uGCenPos.y,1.0 - uGCenPos.y); \n    std1 = 2.0 * uStd * uStd * (f1 * f1 + f2 * f2); \n    if (pf < 1.0) { \n        disx = (vTexCoord.x - uGCenPos.x) * (vTexCoord.x - uGCenPos.x); \n        if (vTexCoord.y /pf < uCenPos.y) { \n            y = vTexCoord.y; \n        } else if ((1.0 - vTexCoord.y)/pf < (1.0 - uCenPos.y)) { \n            y = pf - (1.0 - vTexCoord.y); \n        } else { \n            y = uCenPos.y * pf; \n        } \n        disy = (y/pf - uGCenPos.y) * (y/pf - uGCenPos.y); \n    } else { \n        disy = (vTexCoord.y - uCenPos.y) * (vTexCoord.y - uCenPos.y); \n        if (vTexCoord.x * pf < uCenPos.x) {  \n            x = vTexCoord.x; \n        } else if ((1.0 - vTexCoord.x)*pf < (1.0 - uCenPos.x)) { \n            x = 1.0/pf - (1.0 - vTexCoord.x); \n        } else { \n            x = uCenPos.x / pf; \n        } \n        disx =  (x * pf - uCenPos.x) * (x * pf - uCenPos.x); \n    } \n    dis = disx + disy; \n    f = exp(-1.0 * (disx + disy)/std1); \n    return f; \n} \nfloat BlendOverlayF(float base, float blend) { \n    return (base < 0.5 ? (2.0 * base * blend) : (1.0 - 2.0 * (1.0 - base) * (1.0 - blend))); \n} \nvec3 BlendOverlay(vec3 base, vec3 blend) { \n    vec3 destColor; \n    destColor.r = BlendOverlayF(base.r, blend.r); \n    destColor.g = BlendOverlayF(base.g, blend.g); \n    destColor.b = BlendOverlayF(base.b, blend.b); \n    return destColor; \n} \nvoid main() { \n    vec3 color = texture2D(sTexture, vTexCoord).rgb; \n    int index = int(color.r * 255.0); \n    float index1 = float(index) / 256.0; \n    color.r = texture2D(sRGBLut,vec2(index1,0.0)).r; \n    index = int(color.g * 255.0); \n    index1 = float(index) / 256.0; \n    color.g = texture2D(sRGBLut,vec2(index1,0.0)).r; \n    index = int(color.b * 255.0); \n    index1 = float(index) / 256.0; \n    color.b = texture2D(sRGBLut,vec2(index1,0.0)).r; \n    vec3 oricolor = vec3(color.r,color.g,color.b); \n    oricolor = CProcess(oricolor); \n    float f1 = WJianbianProcess(); \n    float f2 = WEraserProcess(); \n    float f = (1.0 - f2) * f1 + f2; \n    f = (1.0 - f2) * f + f2; \n    f = 1.0 - f; \n    vec3 dstcolor = BlendOverlay(oricolor,vec3(0.0,0.0,0.0)); \n    dstcolor = dstcolor * f + oricolor * (1.0 - f); \n    gl_FragColor = vec4(dstcolor.rgb,1.0) * uAlpha; \n} \n"

    return-object v0
.end method

.method protected initShader()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/android/camera/effect/renders/RGBTransEffectRender;->initShader()V

    .line 145
    iget v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mProgram:I

    const-string/jumbo v1, "uCon"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mUniformConH:I

    .line 146
    iget v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mProgram:I

    const-string/jumbo v1, "uCenPos"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mUniformCenPosH:I

    .line 147
    iget v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mProgram:I

    const-string/jumbo v1, "uGCenPos"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mUniformGCenPosH:I

    .line 148
    iget v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mProgram:I

    const-string/jumbo v1, "uRadius"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mUniformRadiusH:I

    .line 149
    iget v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mProgram:I

    const-string/jumbo v1, "uStd"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mUniformStdH:I

    .line 150
    iget v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mProgram:I

    const-string/jumbo v1, "uWH"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mUniformWHH:I

    .line 143
    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 6
    .param p1, "isSnapShot"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 155
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/RGBTransEffectRender;->initShaderValue(Z)V

    .line 156
    iget v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mUniformConH:I

    iget v1, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mCon:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 157
    iget v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mUniformCenPosH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mCenPos:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mCenPos:[F

    aget v2, v2, v5

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 158
    iget v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mUniformGCenPosH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mGCenPos:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mGCenPos:[F

    aget v2, v2, v5

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 159
    iget v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mUniformRadiusH:I

    iget v1, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mRadius:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 160
    iget v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mUniformStdH:I

    iget v1, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mStd:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 161
    iget v0, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mUniformWHH:I

    iget v1, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mPreviewWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->mPreviewWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 154
    return-void
.end method

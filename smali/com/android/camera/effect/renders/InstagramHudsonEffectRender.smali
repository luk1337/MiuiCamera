.class public Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;
.super Lcom/android/camera/effect/renders/RGBTransEffectRender;
.source "InstagramHudsonEffectRender.java"


# static fields
.field private static final sCurveBLut:[I

.field private static final sCurveGLut:[I

.field private static sCurveRGBLutBuffer:Ljava/nio/IntBuffer;

.field private static final sCurveRLut:[I

.field private static final sSelfRGBLut:[I

.field private static sSelfRGBLutBuffer:Ljava/nio/IntBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 8
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sCurveRLut:[I

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sCurveGLut:[I

    .line 54
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sCurveBLut:[I

    .line 77
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sSelfRGBLut:[I

    .line 7
    return-void

    .line 8
    nop

    :array_0
    .array-data 4
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x31
        0x32
        0x33
        0x34
        0x34
        0x35
        0x36
        0x37
        0x37
        0x38
        0x39
        0x39
        0x3a
        0x3b
        0x3c
        0x3c
        0x3d
        0x3e
        0x3f
        0x3f
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
        0x4b
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x53
        0x54
        0x55
        0x56
        0x58
        0x59
        0x5a
        0x5b
        0x5c
        0x5e
        0x5f
        0x60
        0x61
        0x62
        0x64
        0x65
        0x66
        0x67
        0x68
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x78
        0x79
        0x7a
        0x7b
        0x7c
        0x7d
        0x7f
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
        0x8d
        0x8e
        0x8f
        0x91
        0x92
        0x94
        0x95
        0x96
        0x98
        0x99
        0x9b
        0x9c
        0x9d
        0x9f
        0xa0
        0xa1
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
        0xac
        0xad
        0xae
        0xaf
        0xaf
        0xb0
        0xb1
        0xb1
        0xb2
        0xb3
        0xb3
        0xb4
        0xb4
        0xb5
        0xb6
        0xb6
        0xb7
        0xb7
        0xb8
        0xb9
        0xb9
        0xba
        0xbb
        0xbc
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
        0xc6
        0xc7
        0xc8
        0xc9
        0xca
        0xcb
        0xcc
        0xcc
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
        0xdb
        0xdb
        0xdc
        0xdd
        0xdd
        0xde
        0xde
        0xdf
        0xe0
        0xe0
        0xe1
        0xe1
        0xe2
        0xe3
        0xe3
        0xe4
        0xe5
        0xe5
        0xe6
        0xe7
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
        0xf0
        0xf1
        0xf2
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
        0xfe
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
    .end array-data

    .line 31
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xe
        0xf
        0x10
        0x11
        0x13
        0x14
        0x15
        0x17
        0x18
        0x1a
        0x1b
        0x1d
        0x1f
        0x20
        0x22
        0x24
        0x26
        0x28
        0x2a
        0x2c
        0x2d
        0x2f
        0x31
        0x33
        0x35
        0x37
        0x39
        0x3b
        0x3c
        0x3e
        0x40
        0x41
        0x43
        0x44
        0x46
        0x47
        0x49
        0x4a
        0x4b
        0x4c
        0x4e
        0x4f
        0x50
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
        0x5b
        0x5c
        0x5d
        0x5e
        0x5f
        0x60
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
        0x6d
        0x6e
        0x6f
        0x71
        0x72
        0x73
        0x75
        0x77
        0x78
        0x7a
        0x7c
        0x7e
        0x7f
        0x81
        0x83
        0x85
        0x87
        0x88
        0x8a
        0x8c
        0x8d
        0x8f
        0x90
        0x92
        0x93
        0x94
        0x96
        0x97
        0x98
        0x99
        0x9b
        0x9c
        0x9d
        0x9e
        0x9f
        0xa0
        0xa1
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
        0xb0
        0xb1
        0xb2
        0xb3
        0xb4
        0xb5
        0xb6
        0xb7
        0xb7
        0xb8
        0xb9
        0xba
        0xbb
        0xbb
        0xbc
        0xbd
        0xbe
        0xbe
        0xbf
        0xc0
        0xc0
        0xc1
        0xc2
        0xc2
        0xc3
        0xc4
        0xc4
        0xc5
        0xc5
        0xc6
        0xc6
        0xc7
        0xc8
        0xc8
        0xc8
        0xc9
        0xc9
        0xca
        0xca
        0xcb
        0xcb
        0xcc
        0xcc
        0xcc
        0xcd
        0xcd
        0xce
        0xce
        0xcf
        0xcf
        0xcf
        0xd0
        0xd0
        0xd1
        0xd1
        0xd2
        0xd3
        0xd3
        0xd4
        0xd5
        0xd5
        0xd6
        0xd7
        0xd8
        0xd8
        0xd9
        0xda
        0xdb
        0xdc
        0xdd
        0xde
        0xdf
        0xdf
        0xe0
        0xe1
        0xe2
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
        0xea
        0xeb
        0xeb
        0xeb
        0xec
        0xec
        0xed
        0xed
        0xee
        0xee
        0xef
        0xef
        0xf0
        0xf0
        0xf1
        0xf2
        0xf2
        0xf3
        0xf4
        0xf5
        0xf6
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

    .line 54
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x2
        0x3
        0x5
        0x6
        0x9
        0xb
        0xd
        0x10
        0x13
        0x16
        0x19
        0x1c
        0x1f
        0x23
        0x26
        0x29
        0x2c
        0x2f
        0x32
        0x35
        0x37
        0x3a
        0x3d
        0x3f
        0x42
        0x44
        0x46
        0x48
        0x4a
        0x4c
        0x4e
        0x50
        0x52
        0x53
        0x55
        0x57
        0x58
        0x5a
        0x5b
        0x5c
        0x5e
        0x5f
        0x60
        0x61
        0x62
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
        0x6d
        0x6e
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
        0x82
        0x83
        0x84
        0x86
        0x87
        0x88
        0x8a
        0x8b
        0x8c
        0x8e
        0x8f
        0x91
        0x92
        0x94
        0x95
        0x97
        0x98
        0x9a
        0x9b
        0x9d
        0x9e
        0xa0
        0xa1
        0xa2
        0xa4
        0xa5
        0xa7
        0xa8
        0xa9
        0xab
        0xac
        0xad
        0xae
        0xaf
        0xb1
        0xb2
        0xb3
        0xb4
        0xb5
        0xb6
        0xb7
        0xb8
        0xb9
        0xb9
        0xba
        0xbb
        0xbc
        0xbd
        0xbe
        0xbe
        0xbf
        0xc0
        0xc0
        0xc1
        0xc2
        0xc2
        0xc3
        0xc4
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
        0xca
        0xcb
        0xcb
        0xcb
        0xcc
        0xcc
        0xcd
        0xcd
        0xcd
        0xce
        0xce
        0xcf
        0xcf
        0xcf
        0xd0
        0xd0
        0xd0
        0xd1
        0xd1
        0xd2
        0xd2
        0xd2
        0xd3
        0xd3
        0xd4
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
        0xd8
        0xd9
        0xd9
        0xda
        0xda
        0xdb
        0xdb
        0xdc
        0xdc
        0xdd
        0xdd
        0xde
        0xde
        0xdf
        0xdf
        0xe0
        0xe0
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
        0xe9
        0xe9
        0xea
        0xeb
        0xec
        0xed
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
        0xf8
        0xf9
        0xfa
        0xfa
        0xfb
        0xfc
        0xfc
        0xfc
        0xfd
        0xfd
        0xfd
        0xfe
        0xfe
        0xfe
        0xfe
        0xfe
        0xff
        0xff
        0xff
        0xff
        0xff
    .end array-data

    .line 77
    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
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
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0xe
        0xe
        0xf
        0x10
        0x10
        0x11
        0x11
        0x12
        0x13
        0x14
        0x14
        0x15
        0x16
        0x16
        0x17
        0x18
        0x19
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
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
        0x35
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
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
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
        0x89
        0x8a
        0x8b
        0x8c
        0x8d
        0x8e
        0x8f
        0x90
        0x91
        0x93
        0x94
        0x95
        0x96
        0x97
        0x99
        0x9a
        0x9b
        0x9c
        0x9d
        0x9f
        0xa0
        0xa1
        0xa2
        0xa4
        0xa5
        0xa6
        0xa8
        0xa9
        0xaa
        0xac
        0xad
        0xae
        0xb0
        0xb1
        0xb2
        0xb4
        0xb5
        0xb7
        0xb8
        0xba
        0xbb
        0xbd
        0xbe
        0xc0
        0xc1
        0xc3
        0xc4
        0xc6
        0xc7
        0xc9
        0xca
        0xcc
        0xcd
        0xcf
        0xd1
        0xd2
        0xd4
        0xd5
        0xd7
        0xd9
        0xda
        0xdc
        0xdd
        0xdf
        0xe1
        0xe2
        0xe4
        0xe6
        0xe7
        0xe9
        0xea
        0xec
        0xee
        0xef
        0xf1
    .end array-data
.end method

.method protected constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "id"    # I

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/RGBTransEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 139
    return-void
.end method

.method public static create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;
    .locals 4
    .param p0, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p1, "id"    # I

    .prologue
    .line 127
    new-instance v0, Lcom/android/camera/effect/renders/CurveEffectRender;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/effect/renders/CurveEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 128
    .local v0, "firstPassRender":Lcom/android/camera/effect/renders/CurveEffectRender;
    invoke-static {}, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->getCurveRGBLutBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/effect/renders/CurveEffectRender;->setRGBTransLutBuffer(Ljava/nio/IntBuffer;)V

    .line 129
    new-instance v2, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 130
    .local v2, "secondPassRender":Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;
    invoke-static {}, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->getSelfRGBLutBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->setRGBTransLutBuffer(Ljava/nio/IntBuffer;)V

    .line 131
    new-instance v1, Lcom/android/camera/effect/renders/PipeRenderPair;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    .line 132
    .local v1, "pipeRender":Lcom/android/camera/effect/renders/PipeRenderPair;
    return-object v1
.end method

.method private static getCurveRGBLutBuffer()Ljava/nio/IntBuffer;
    .locals 4

    .prologue
    .line 104
    sget-object v2, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sCurveRGBLutBuffer:Ljava/nio/IntBuffer;

    if-nez v2, :cond_1

    .line 105
    sget-object v2, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sCurveRLut:[I

    array-length v2, v2

    new-array v1, v2, [I

    .line 106
    .local v1, "rgbLut":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 107
    sget-object v2, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sCurveBLut:[I

    aget v2, v2, v0

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sCurveGLut:[I

    aget v3, v3, v0

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sCurveRLut:[I

    aget v3, v3, v0

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v2

    sput-object v2, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sCurveRGBLutBuffer:Ljava/nio/IntBuffer;

    .line 111
    :cond_1
    sget-object v2, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sCurveRGBLutBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 112
    sget-object v2, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sCurveRGBLutBuffer:Ljava/nio/IntBuffer;

    return-object v2
.end method

.method private static getSelfRGBLutBuffer()Ljava/nio/IntBuffer;
    .locals 4

    .prologue
    .line 116
    sget-object v1, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sSelfRGBLutBuffer:Ljava/nio/IntBuffer;

    if-nez v1, :cond_1

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sSelfRGBLut:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 118
    sget-object v1, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sSelfRGBLut:[I

    sget-object v2, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sSelfRGBLut:[I

    aget v2, v2, v0

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sSelfRGBLut:[I

    aget v3, v3, v0

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sSelfRGBLut:[I

    aget v3, v3, v0

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    sget-object v1, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sSelfRGBLut:[I

    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    sput-object v1, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sSelfRGBLutBuffer:Ljava/nio/IntBuffer;

    .line 122
    :cond_1
    sget-object v1, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sSelfRGBLutBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 123
    sget-object v1, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->sSelfRGBLutBuffer:Ljava/nio/IntBuffer;

    return-object v1
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string/jumbo v0, "precision mediump int; \nprecision mediump float; \nuniform sampler2D sTexture; \nuniform sampler2D sRGBLut; \nvarying vec2 vTexCoord; \nuniform float uAlpha; \nvec3 adjust_contrast(vec3 color, float f_contrast) { \n    float ff = log(1.0 - f_contrast) / log(0.5); \n    float r = color.r, g = color.g, b = color.b; \n    if (r < 0.5) { \n        r = pow(2.0 * r, ff) / 2.0; \n    } else { \n        r = 1.0 - pow(2.0 * (1.0 - r), ff) / 2.0; \n    } \n    if (g < 0.5) { \n        g = pow(2.0 * g, ff) / 2.0; \n    } else { \n        g = 1.0 - pow(2.0 * (1.0 - g), ff) / 2.0; \n    } \n    if (b < 0.5) { \n        b = pow(2.0 * b, ff) / 2.0; \n    } else { \n        b = 1.0 - pow(2.0 * (1.0 - b), ff) / 2.0; \n    } \n    return vec3(r, g, b); \n} \nvec3 adjust_light(vec3 color, float f_light, float ff_ll) { \n    color.r = pow(color.r, ff_ll); \n    color.r = (color.r * f_light) / (2.0 * color.r * f_light - color.r - f_light + 1.0); \n    color.r = pow(color.r, 1.0 / ff_ll); \n    color.g = pow(color.g, ff_ll); \n    color.g = (color.g * f_light) / (2.0 * color.g * f_light - color.g - f_light + 1.0); \n    color.g = pow(color.g, 1.0 / ff_ll); \n    color.b = pow(color.b, ff_ll); \n    color.b = (color.b * f_light) / (2.0 * color.b * f_light - color.b - f_light + 1.0); \n    color.b = pow(color.b, 1.0 / ff_ll); \n    color = clamp(color, 0.0, 1.0); \n    return color; \n} \nvoid main() { \n    vec3 color = texture2D(sTexture, vTexCoord).rgb; \n    vec3 index; \n    index.r = float(int(color.r * 255.0)) / 256.0; \n    index.g = float(int(color.g * 255.0)) / 256.0; \n    index.b = float(int(color.b * 255.0)) / 256.0; \n    color.r = texture2D(sRGBLut, vec2(index.r, 0.0)).r; \n    color.g = texture2D(sRGBLut, vec2(index.g, 0.0)).g; \n    color.b = texture2D(sRGBLut, vec2(index.b, 0.0)).b; \n    float msk_value = exp(-(pow(vTexCoord[0]-0.5, 2.0) + pow(vTexCoord[1]-0.5, 2.0))/0.2); \n    vec3 combined_back = msk_value * vec3(158.0/255.0, 167.0/255.0, 201.0/255.0); \n    combined_back += (1.0-msk_value) * vec3(100.0/255.0, 100.0/255.0, 100.0/255.0); \n    vec3 tmp = vec3(float(color.r < 0.5), float(color.g < 0.5), float(color.b < 0.5)); \n    color = 0.25 * color + 0.75 * (2.0 * color * combined_back * tmp + (1.0 - 2.0*(1.0-color)*(1.0-combined_back)) * (1.0-tmp)); \n    color = clamp(color, 0.0, 1.0); \n    float bri = 0.5 + 20.0 / 155.0; \n    float ff_ll = 3.8; \n    color = adjust_light(color, bri, ff_ll); \n    color = adjust_contrast(color, 0.55); \n    color = clamp(color, 0.0, 1.0); \n    gl_FragColor = vec4(color, 1.0) * uAlpha; \n}"

    return-object v0
.end method

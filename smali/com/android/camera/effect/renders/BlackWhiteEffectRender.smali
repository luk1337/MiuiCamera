.class public Lcom/android/camera/effect/renders/BlackWhiteEffectRender;
.super Lcom/android/camera/effect/renders/RGBTransEffectRender;
.source "BlackWhiteEffectRender.java"


# static fields
.field private static final sRGBLut:[I

.field private static sRGBLutBuffer:Ljava/nio/IntBuffer;


# instance fields
.field protected mCon:F

.field protected mUniformConH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;->sRGBLut:[I

    .line 7
    return-void

    .line 11
    :array_0
    .array-data 4
        0x2d
        0x2d
        0x2d
        0x2d
        0x2d
        0x2d
        0x2e
        0x2e
        0x2e
        0x2e
        0x2e
        0x2f
        0x2f
        0x2f
        0x2f
        0x2f
        0x30
        0x30
        0x30
        0x30
        0x30
        0x31
        0x31
        0x31
        0x31
        0x32
        0x32
        0x32
        0x32
        0x33
        0x33
        0x33
        0x34
        0x34
        0x34
        0x34
        0x35
        0x35
        0x35
        0x36
        0x36
        0x36
        0x37
        0x37
        0x38
        0x38
        0x38
        0x39
        0x39
        0x3a
        0x3a
        0x3b
        0x3b
        0x3c
        0x3c
        0x3d
        0x3d
        0x3e
        0x3e
        0x3f
        0x3f
        0x40
        0x40
        0x41
        0x42
        0x42
        0x43
        0x43
        0x44
        0x45
        0x45
        0x46
        0x47
        0x47
        0x48
        0x49
        0x4a
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4e
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
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6d
        0x6e
        0x6f
        0x70
        0x72
        0x73
        0x74
        0x75
        0x77
        0x78
        0x79
        0x7b
        0x7c
        0x7d
        0x7f
        0x80
        0x81
        0x83
        0x84
        0x85
        0x86
        0x88
        0x89
        0x8a
        0x8c
        0x8d
        0x8e
        0x90
        0x91
        0x93
        0x94
        0x95
        0x97
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
        0xa6
        0xa7
        0xa8
        0xaa
        0xab
        0xad
        0xae
        0xaf
        0xb1
        0xb2
        0xb3
        0xb5
        0xb6
        0xb8
        0xb9
        0xba
        0xbc
        0xbd
        0xbe
        0xc0
        0xc1
        0xc2
        0xc3
        0xc4
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
        0xd1
        0xd2
        0xd3
        0xd3
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
        0xd9
        0xda
        0xda
        0xda
        0xdb
        0xdb
        0xdb
        0xdb
        0xdc
        0xdc
        0xdc
        0xdc
        0xdd
        0xdd
        0xdd
        0xdd
        0xde
        0xde
        0xde
        0xdf
        0xdf
        0xdf
        0xdf
        0xe0
        0xe0
        0xe0
        0xe1
        0xe1
        0xe2
        0xe2
        0xe2
        0xe3
        0xe3
        0xe4
        0xe4
        0xe5
        0xe5
        0xe6
        0xe6
        0xe7
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
        0xec
        0xed
    .end array-data
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 1
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "id"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/RGBTransEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 9
    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;->mCon:F

    .line 50
    invoke-static {}, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;->getRGBLutBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;->setRGBTransLutBuffer(Ljava/nio/IntBuffer;)V

    .line 48
    return-void
.end method

.method private static getRGBLutBuffer()Ljava/nio/IntBuffer;
    .locals 4

    .prologue
    .line 33
    sget-object v1, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;->sRGBLutBuffer:Ljava/nio/IntBuffer;

    if-nez v1, :cond_1

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;->sRGBLut:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 35
    sget-object v1, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;->sRGBLut:[I

    sget-object v2, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;->sRGBLut:[I

    aget v2, v2, v0

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;->sRGBLut:[I

    aget v3, v3, v0

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;->sRGBLut:[I

    aget v3, v3, v0

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    sget-object v1, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;->sRGBLut:[I

    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    sput-object v1, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;->sRGBLutBuffer:Ljava/nio/IntBuffer;

    .line 39
    :cond_1
    sget-object v1, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;->sRGBLutBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 40
    sget-object v1, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;->sRGBLutBuffer:Ljava/nio/IntBuffer;

    return-object v1
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "precision mediump int; \nprecision mediump float; \nuniform sampler2D sTexture; \nuniform sampler2D sRGBLut; \nvarying vec2 vTexCoord; \nuniform float uAlpha; \nuniform float uCon; \nfloat removeColor(vec3 color) { \n   float maxColor = max(color.r, max(color.g, color.b)); \n   float minColor = min(color.r, min(color.g, color.b)); \n   return (maxColor + minColor) / 2.0; \n} \nfloat CProcess(float color) { \n    float cValue = uCon / 100.0 + 1.0; \n    float dstf = clamp((color - 0.5) * cValue + 0.5, 0.0, 1.0); \n    return dstf; \n} \nvoid main() { \n    vec3 color = texture2D(sTexture, vTexCoord).rgb; \n    float gray = removeColor(color); \n    gray = CProcess(gray); \n    gray = float(int(gray * 255.0)) / 256.0; \n    gray = texture2D(sRGBLut, vec2(gray, 0.0)).r; \n    gl_FragColor = vec4(gray, gray, gray, 1.0) * uAlpha; \n}"

    return-object v0
.end method

.method protected initShader()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/camera/effect/renders/RGBTransEffectRender;->initShader()V

    .line 56
    iget v0, p0, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;->mProgram:I

    const-string/jumbo v1, "uCon"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;->mUniformConH:I

    .line 54
    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 2
    .param p1, "isSnapShot"    # Z

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/RGBTransEffectRender;->initShaderValue(Z)V

    .line 62
    iget v0, p0, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;->mUniformConH:I

    iget v1, p0, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;->mCon:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 60
    return-void
.end method

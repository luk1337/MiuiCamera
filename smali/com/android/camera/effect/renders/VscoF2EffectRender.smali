.class public Lcom/android/camera/effect/renders/VscoF2EffectRender;
.super Lcom/android/camera/effect/renders/RGBTransEffectRender;
.source "VscoF2EffectRender.java"


# static fields
.field private static final sRGBLut:[I

.field private static sRGBLutBuffer:Ljava/nio/IntBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/effect/renders/VscoF2EffectRender;->sRGBLut:[I

    .line 7
    return-void

    .line 8
    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x5
        0x6
        0x6
        0x7
        0x8
        0x8
        0x9
        0xa
        0xa
        0xb
        0xc
        0xd
        0xd
        0xe
        0xf
        0xf
        0x10
        0x11
        0x12
        0x12
        0x13
        0x14
        0x15
        0x15
        0x16
        0x17
        0x18
        0x18
        0x19
        0x1a
        0x1b
        0x1c
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
        0x26
        0x27
        0x28
        0x29
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
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
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
        0x5d
        0x5e
        0x5f
        0x61
        0x62
        0x63
        0x64
        0x66
        0x67
        0x68
        0x6a
        0x6b
        0x6c
        0x6d
        0x6f
        0x70
        0x71
        0x72
        0x74
        0x75
        0x76
        0x78
        0x79
        0x7a
        0x7b
        0x7d
        0x7e
        0x7f
        0x80
        0x81
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
        0x8f
        0x90
        0x91
        0x92
        0x93
        0x94
        0x95
        0x97
        0x98
        0x99
        0x9a
        0x9b
        0x9c
        0x9d
        0x9e
        0x9f
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
        0xbf
        0xc0
        0xc1
        0xc2
        0xc3
        0xc4
        0xc5
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
        0xd1
        0xd2
        0xd3
        0xd4
        0xd5
        0xd6
        0xd7
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
        0xea
        0xeb
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
        0xfb
        0xfc
        0xfd
        0xfe
        0xff
    .end array-data
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 1
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "id"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/RGBTransEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 51
    invoke-static {}, Lcom/android/camera/effect/renders/VscoF2EffectRender;->getRGBLutBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/VscoF2EffectRender;->setRGBTransLutBuffer(Ljava/nio/IntBuffer;)V

    .line 49
    return-void
.end method

.method private static getRGBLutBuffer()Ljava/nio/IntBuffer;
    .locals 4

    .prologue
    .line 34
    sget-object v1, Lcom/android/camera/effect/renders/VscoF2EffectRender;->sRGBLutBuffer:Ljava/nio/IntBuffer;

    if-nez v1, :cond_1

    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/camera/effect/renders/VscoF2EffectRender;->sRGBLut:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 36
    sget-object v1, Lcom/android/camera/effect/renders/VscoF2EffectRender;->sRGBLut:[I

    sget-object v2, Lcom/android/camera/effect/renders/VscoF2EffectRender;->sRGBLut:[I

    aget v2, v2, v0

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/camera/effect/renders/VscoF2EffectRender;->sRGBLut:[I

    aget v3, v3, v0

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/camera/effect/renders/VscoF2EffectRender;->sRGBLut:[I

    aget v3, v3, v0

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    sget-object v1, Lcom/android/camera/effect/renders/VscoF2EffectRender;->sRGBLut:[I

    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    sput-object v1, Lcom/android/camera/effect/renders/VscoF2EffectRender;->sRGBLutBuffer:Ljava/nio/IntBuffer;

    .line 40
    :cond_1
    sget-object v1, Lcom/android/camera/effect/renders/VscoF2EffectRender;->sRGBLutBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 41
    sget-object v1, Lcom/android/camera/effect/renders/VscoF2EffectRender;->sRGBLutBuffer:Ljava/nio/IntBuffer;

    return-object v1
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "precision mediump int; \nprecision mediump float; \nuniform sampler2D sTexture; \nuniform sampler2D sRGBLut; \nvarying vec2 vTexCoord; \nuniform float uAlpha; \nbool isContain(vec3 color, int select_color) { \n    bool result = false; \n    if (select_color == 0) {        //\u7ea2\u8272 \n        result = (color.r > color.g) && (color.r > color.b); \n    } else if (select_color == 1) { //\u9ec4\u8272 \n        result = (color.r > color.b) && (color.g > color.b); \n    } else if (select_color == 2) { //\u7eff\u8272 \n        result = (color.g > color.r) && (color.g > color.b); \n    } else if (select_color == 3) { //\u9752\u8272 \n        result = (color.g > color.r) && (color.b > color.r); \n    } else if (select_color == 4) { //\u84dd\u8272 \n        result = (color.b > color.r) && (color.b > color.g); \n    } else if (select_color == 5) { //\u6d0b\u7ea2 \n        result = (color.r > color.g) && (color.b > color.g); \n    } else if (select_color == 6) { //\u9ed1\u8272 \n        result = (color.r < 0.5) && (color.g < 0.5) && (color.b < 0.5); \n    } else if (select_color == 7) { //\u7070\u8272 \n        result = (color.r < 1.0) && (color.g < 1.0) && (color.b < 1.0) && \n                 (color.r > 0.0) && (color.g > 0.0) && (color.b > 0.0); \n    } else if (select_color == 8) { //\u767d\u8272 \n        result = (color.r > 0.5) && (color.g > 0.5) && (color.b > 0.5); \n    } \n    return result; \n} \nvec3 SelectiveColor(vec3 color, int select_color, vec4 tune_values) { \n    float R = color.r; \n    float G = color.g; \n    float B = color.b; \n    if (isContain(color, select_color)) { \n        float max_V = max(R, max(G, B)); \n        float min_V = min(R, min(G, B)); \n        float mid_V = R + G + B - max_V - min_V; \n        float V_range = 0.0; \n        if (select_color == 0 || select_color == 2 || select_color == 4) { \n            V_range = max_V - mid_V; \n        } else if (select_color == 1 || select_color == 3 || select_color == 5) { \n            V_range = mid_V - min_V; \n        } else if (select_color == 7) { \n            V_range = 1.0 - abs(max_V-0.5) + abs(min_V-0.5); \n        } else if (select_color == 8) { \n            V_range = (min_V-0.5) * 2.0; \n        } else if (select_color == 6) { \n            V_range = (0.5-max_V) * 2.0; \n        } \n        vec4 fr_max = vec4(    R,     G,     B, 1.0); \n        vec4 fl_max = vec4(1.0-R, 1.0-G, 1.0-B, 1.0); \n        vec3 rgb = color; \n        float delta = 0.0; \n        if (tune_values.r > 0.0) { \n            rgb.r = color.r - V_range * min( tune_values.r, fr_max.r); \n        } else if (tune_values.r < 0.0) { \n            rgb.r = color.r + V_range * min(-tune_values.r, fl_max.r); \n        } \n        delta = (rgb.r - color.r) / V_range; \n        if (tune_values.a > 0.0) { \n            rgb.r = color.r - V_range * min( tune_values.a, fr_max.r+delta); \n        } else if (tune_values.a < 0.0) { \n            rgb.r = color.r + V_range * min(-tune_values.a, fl_max.r-delta); \n        } \n        if (tune_values.g > 0.0) { \n            rgb.g = color.g - V_range * min( tune_values.g, fr_max.g); \n        } else if (tune_values.g < 0.0) { \n            rgb.g = color.g + V_range * min(-tune_values.g, fl_max.g); \n        } \n        delta = (rgb.g - color.g) / V_range; \n        if (tune_values.a > 0.0) { \n            rgb.g = color.g - V_range * min( tune_values.a, fr_max.g+delta); \n        } else if (tune_values.a < 0.0) { \n            rgb.g = color.g + V_range * min(-tune_values.a, fl_max.g-delta); \n        } \n        if (tune_values.b > 0.0) { \n            rgb.b = color.b - V_range * min( tune_values.b, fr_max.b); \n        } else if (tune_values.b < 0.0) { \n            rgb.b = color.b + V_range * min(-tune_values.b, fl_max.b); \n        } \n        delta = (rgb.b - color.b) / V_range; \n        if (tune_values.a > 0.0) { \n            rgb.b = color.b - V_range * min( tune_values.a, fr_max.b+delta); \n        } else if (tune_values.a < 0.0) { \n            rgb.b = color.b + V_range * min(-tune_values.a, fl_max.b-delta); \n        } \n        color = rgb; \n    } \n    return color; \n} \nvec3 TuneLevels(vec3 color, float minInput, float maxInput, float gamma, float minOutput, float maxOutput, int mod) { \n    if (mod == 4 || mod == 0) { \n        float value_ = pow(min(max(color.r - minInput, 0.0) / (maxInput - minInput), 1.0), 1.0/gamma); \n        color.r = maxOutput * value_ + minOutput * (1.0 - value_); \n    } else if (mod == 4 || mod == 1) { \n        float value_ = pow(min(max(color.g - minInput, 0.0) / (maxInput - minInput), 1.0), 1.0/gamma); \n        color.g = maxOutput * value_ + minOutput * (1.0 - value_); \n    } else if (mod == 4 || mod == 2) { \n        float value_ = pow(min(max(color.b - minInput, 0.0) / (maxInput - minInput), 1.0), 1.0/gamma); \n        color.b = maxOutput * value_ + minOutput * (1.0 - value_); \n    } \n    return color; \n} \nvec3 adjust_contrast(vec3 color, float f_contrast) { \n    float ff = log(1.0 - f_contrast) / log(0.5); \n    float r = color.r, g = color.g, b = color.b; \n    if (r < 0.5) { \n        r = pow(2.0 * r, ff) / 2.0; \n    } else { \n        r = 1.0 - pow(2.0 * (1.0 - r), ff) / 2.0; \n    } \n    if (g < 0.5) { \n        g = pow(2.0 * g, ff) / 2.0; \n    } else { \n        g = 1.0 - pow(2.0 * (1.0 - g), ff) / 2.0; \n    } \n    if (b < 0.5) { \n        b = pow(2.0 * b, ff) / 2.0; \n    } else { \n        b = 1.0 - pow(2.0 * (1.0 - b), ff) / 2.0; \n    } \n    return vec3(r, g, b); \n} \nvec3 adjust_light(vec3 color, float f_light, float ff_ll) { \n    color.r = pow(color.r, ff_ll); \n    color.r = (color.r * f_light) / (2.0 * color.r * f_light - color.r - f_light + 1.0); \n    color.r = pow(color.r, 1.0 / ff_ll); \n    color.g = pow(color.g, ff_ll); \n    color.g = (color.g * f_light) / (2.0 * color.g * f_light - color.g - f_light + 1.0); \n    color.g = pow(color.g, 1.0 / ff_ll); \n    color.b = pow(color.b, ff_ll); \n    color.b = (color.b * f_light) / (2.0 * color.b * f_light - color.b - f_light + 1.0); \n    color.b = pow(color.b, 1.0 / ff_ll); \n    color = clamp(color, 0.0, 1.0); \n    return color; \n} \nvoid main() { \n    vec3 color = texture2D(sTexture, vTexCoord).rgb; \n    int select_color = 3; \n    vec4 tune_values = vec4(0.13, 0.26, 1.0, 0.05); \n    color = SelectiveColor(color, select_color, tune_values); \n    select_color = 5; \n    tune_values = vec4(0.2, -0.08, 0.53, -0.16); \n    color = SelectiveColor(color, select_color, tune_values); \n    select_color = 8; \n    tune_values = vec4(0.39, 0.0, 0.0, -0.14); \n    color = SelectiveColor(color, select_color, tune_values); \n    color = clamp(color, 0.0, 1.0); \n    vec3 index; \n    index.r = float(int(color.r * 255.0)) / 256.0; \n    index.g = float(int(color.g * 255.0)) / 256.0; \n    index.b = float(int(color.b * 255.0)) / 256.0; \n    color.r = texture2D(sRGBLut, vec2(index.r, 0.0)).r; \n    color.g = texture2D(sRGBLut, vec2(index.g, 0.0)).g; \n    color.b = texture2D(sRGBLut, vec2(index.b, 0.0)).b; \n    color = clamp(color, 0.0, 1.0); \n    color = TuneLevels(color, 13.0/255.0, 1.0, 1.37, 0.0, 1.0, 4); \n    color = TuneLevels(color, 0.0, 1.0, 0.97, 0.0, 1.0, 0); \n    select_color = 0; \n    tune_values = vec4(-0.1, 0.0, -0.07, 0.1); \n    color = SelectiveColor(color, select_color, tune_values); \n    select_color = 1; \n    tune_values = vec4(0.0, 0.03, -0.34, -0.15); \n    color = SelectiveColor(color, select_color, tune_values); \n    select_color = 2; \n    tune_values = vec4(-0.16, 0.58, 0.07, 0.2); \n    color = SelectiveColor(color, select_color, tune_values); \n    select_color = 4; \n    tune_values = vec4(0.86, -0.29, 0.17, -0.33); \n    color = SelectiveColor(color, select_color, tune_values); \n    select_color = 4; \n    tune_values = vec4(0.0, 0.08, 0.34, 0.09); \n    color = SelectiveColor(color, select_color, tune_values); \n    float bri = 0.5 + 3.0 / 155.0; \n    float ff_ll = 2.2; \n    color = adjust_light(color, bri, ff_ll); \n    color = adjust_contrast(color, 0.545); \n    gl_FragColor = vec4(color, 1.0) * uAlpha; \n} \n"

    return-object v0
.end method

.class public Lcom/android/camera/effect/renders/SketchEffectRender;
.super Lcom/android/camera/effect/renders/ConvolutionEffectRender;
.source "SketchEffectRender.java"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "id"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 10
    return-void
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "precision mediump float; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nvec4 rgb2gray(vec4 color) { \n  float gray = dot(color.rgb, vec3(0.299, 0.587, 0.114)); \n  return vec4(gray, gray, gray, 1.0); \n} \nvoid main() \n{ \n  vec4 sample0, sample1, sample2, sample3, sample5, sample6, sample7, sample8; \n  sample0 = texture2D(sTexture, vTexCoord + vec2(-uStep.x, -uStep.y)); \n  sample1 = texture2D(sTexture, vTexCoord + vec2(0.0, -uStep.y)); \n  sample2 = texture2D(sTexture, vTexCoord + vec2(uStep.x, -uStep.y)); \n  sample3 = texture2D(sTexture, vTexCoord + vec2(-uStep.x, 0.0)); \n  gl_FragColor = texture2D(sTexture, vTexCoord); \n  sample5 = texture2D(sTexture, vTexCoord + vec2(uStep.x, 0.0)); \n  sample6 = texture2D(sTexture, vTexCoord + vec2(-uStep.x, uStep.y)); \n  sample7 = texture2D(sTexture, vTexCoord + vec2(0.0, uStep.y)); \n  sample8 = texture2D(sTexture, vTexCoord + vec2(uStep.x, uStep.y)); \n  vec4 sample = sqrt((gl_FragColor-sample0)*(gl_FragColor-sample0)+(gl_FragColor-sample1)*(gl_FragColor-sample1)) \n      +sqrt((gl_FragColor-sample2)*(gl_FragColor-sample2)+(gl_FragColor-sample3)*(gl_FragColor-sample3)) \n      +sqrt((gl_FragColor-sample5)*(gl_FragColor-sample5)+(gl_FragColor-sample6)*(gl_FragColor-sample6)) \n      +sqrt((gl_FragColor-sample7)*(gl_FragColor-sample7)+(gl_FragColor-sample8)*(gl_FragColor-sample8)); \n  sample = sample * 2.0; \n  sample = clamp(sample, 0.0, 1.0); \n  gl_FragColor = rgb2gray(1.0 - sample); \n} "

    return-object v0
.end method

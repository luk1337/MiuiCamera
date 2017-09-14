.class public Lcom/android/camera/effect/renders/YBlurEffectRender;
.super Lcom/android/camera/effect/renders/RegionEffectRender;
.source "YBlurEffectRender.java"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "id"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/RegionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 14
    return-void
.end method


# virtual methods
.method protected drawTexture(Lcom/android/gallery3d/ui/BasicTexture;FFFFZ)V
    .locals 2
    .param p1, "texture"    # Lcom/android/gallery3d/ui/BasicTexture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "w"    # F
    .param p5, "h"    # F
    .param p6, "isSnapShot"    # Z

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/YBlurEffectRender;->setStep(II)V

    .line 21
    invoke-super/range {p0 .. p6}, Lcom/android/camera/effect/renders/RegionEffectRender;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;FFFFZ)V

    .line 19
    return-void
.end method

.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "precision mediump float; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nuniform float uAlpha; \nvoid main() { \n    vec2 step = vec2(0.0, uStep.y) ; \n    vec2 delta = step; \n    int radius = 22; \n    float factor = 0.001890359; \n    float weight = factor * float(radius + 1); \n    vec3 sum = texture2D(sTexture, vTexCoord).rgb * weight; \n    for (int i = 1; i <= radius; ++i) { \n        weight -= factor; \n        sum += (texture2D(sTexture, vTexCoord + delta).rgb + texture2D(sTexture, vTexCoord - delta).rgb) * weight; \n        delta += step; \n    } \n    gl_FragColor = vec4(sum, 1.0)*uAlpha; \n}"

    return-object v0
.end method

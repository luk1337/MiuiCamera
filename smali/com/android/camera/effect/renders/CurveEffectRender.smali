.class public Lcom/android/camera/effect/renders/CurveEffectRender;
.super Lcom/android/camera/effect/renders/RGBTransEffectRender;
.source "CurveEffectRender.java"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "id"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/RGBTransEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 11
    return-void
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "precision mediump int; \nprecision mediump float; \nuniform sampler2D sTexture; \nuniform sampler2D sRGBLut; \nvarying vec2 vTexCoord; \nuniform float uAlpha; \nvoid main() { \n    vec3 color = texture2D(sTexture, vTexCoord).rgb; \n    vec3 index; \n    index.r = float(int(color.r * 255.0)) / 256.0; \n    index.g = float(int(color.g * 255.0)) / 256.0; \n    index.b = float(int(color.b * 255.0)) / 256.0; \n    color.r = texture2D(sRGBLut, vec2(index.r, 0.0)).r; \n    color.g = texture2D(sRGBLut, vec2(index.g, 0.0)).g; \n    color.b = texture2D(sRGBLut, vec2(index.b, 0.0)).b; \n    gl_FragColor = vec4(color, 1.0) * uAlpha; \n}"

    return-object v0
.end method

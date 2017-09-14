.class public Lcom/android/camera/effect/renders/FocusPeakingRender;
.super Lcom/android/camera/effect/renders/RenderGroup;
.source "FocusPeakingRender.java"


# static fields
.field static final DEFAULT_THRESHOLD:F


# instance fields
.field public mFirstPassRender:Lcom/android/camera/effect/renders/FocusPeakingFirstPassRender;

.field public mFocusPeakingRender:Lcom/android/camera/effect/renders/PipeRenderPair;

.field public mNoneEffectRender:Lcom/android/camera/effect/renders/NoneEffectRender;

.field public mSecondPassRender:Lcom/android/camera/effect/renders/FocusPeakingSecondPassRender;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-string/jumbo v0, "camera_peaking_mf_threshold"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lcom/android/camera/effect/renders/FocusPeakingRender;->DEFAULT_THRESHOLD:F

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 22
    new-instance v0, Lcom/android/camera/effect/renders/NoneEffectRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/NoneEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mNoneEffectRender:Lcom/android/camera/effect/renders/NoneEffectRender;

    .line 23
    new-instance v0, Lcom/android/camera/effect/renders/FocusPeakingFirstPassRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/FocusPeakingFirstPassRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mFirstPassRender:Lcom/android/camera/effect/renders/FocusPeakingFirstPassRender;

    .line 24
    new-instance v0, Lcom/android/camera/effect/renders/FocusPeakingSecondPassRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/FocusPeakingSecondPassRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mSecondPassRender:Lcom/android/camera/effect/renders/FocusPeakingSecondPassRender;

    .line 25
    new-instance v0, Lcom/android/camera/effect/renders/PipeRenderPair;

    iget-object v1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mFirstPassRender:Lcom/android/camera/effect/renders/FocusPeakingFirstPassRender;

    iget-object v2, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mSecondPassRender:Lcom/android/camera/effect/renders/FocusPeakingSecondPassRender;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mFocusPeakingRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    .line 27
    iget-object v0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mNoneEffectRender:Lcom/android/camera/effect/renders/NoneEffectRender;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/FocusPeakingRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 28
    iget-object v0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mFocusPeakingRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/FocusPeakingRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "id"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/FocusPeakingRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 33
    iput p2, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mId:I

    .line 31
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 2
    .param p1, "attri"    # Lcom/android/camera/effect/draw_mode/DrawAttribute;

    .prologue
    .line 39
    iget-object v1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mNoneEffectRender:Lcom/android/camera/effect/renders/NoneEffectRender;

    invoke-virtual {v1, p1}, Lcom/android/camera/effect/renders/NoneEffectRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result v0

    .line 40
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mFocusPeakingRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v1, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 41
    return v0
.end method

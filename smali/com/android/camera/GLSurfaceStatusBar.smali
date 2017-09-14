.class public Lcom/android/camera/GLSurfaceStatusBar;
.super Ljava/lang/Object;
.source "GLSurfaceStatusBar.java"


# static fields
.field private static final PREVIEW_TOP_PADDING:I

.field private static final ZOOM_HINT_TEXT_WIDTH:I


# instance fields
.field private mDrawVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/ui/BasicTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mEV:F

.field private mEvTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field private mOrientation:I

.field private mPaint:Lcom/android/gallery3d/ui/GLPaint;

.field private mZoomScale:F

.field private mZoomTexture:Lcom/android/gallery3d/ui/BasicTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 15
    sput v0, Lcom/android/camera/GLSurfaceStatusBar;->PREVIEW_TOP_PADDING:I

    .line 18
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    sput v0, Lcom/android/camera/GLSurfaceStatusBar;->ZOOM_HINT_TEXT_WIDTH:I

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mZoomScale:F

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mEV:F

    .line 26
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mDrawVector:Ljava/util/Vector;

    .line 27
    new-instance v0, Lcom/android/gallery3d/ui/GLPaint;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/GLPaint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    .line 34
    iget-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLPaint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLPaint;->setLineWidth(F)V

    .line 33
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mZoomTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 44
    iput-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mEvTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 45
    iget-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mDrawVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 42
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/camera/GLSurfaceStatusBar;->mOrientation:I

    .line 38
    return-void
.end method

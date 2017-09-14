.class public Lcom/android/camera/ui/V6ThumbnailButton;
.super Lcom/android/camera/ui/V6BottomAnimationViewGroup;
.source "V6ThumbnailButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BORDER:I


# instance fields
.field public mImage:Lcom/android/camera/ui/RotateImageView;

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mValideThumbnail:Z

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6ThumbnailButton;->BORDER:I

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6ThumbnailButton;->setEnabled(Z)V

    .line 70
    return-void
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 92
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mValideThumbnail:Z

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 96
    const/4 v1, 0x0

    .line 97
    const v2, 0x7f09000e

    .line 98
    const/4 v3, 0x2

    move-object v5, v4

    .line 95
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 29
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->onFinishInflate()V

    .line 30
    const v1, 0x7f09000f

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    .line 31
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6ThumbnailButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 33
    .local v0, "layout":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sget v2, Lcom/android/camera/ui/V6ThumbnailButton;->BORDER:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    iget-object v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/ui/V6ThumbnailButton;->clearAnimation()V

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 51
    .local v0, "activity":Lcom/android/camera/ActivityBase;
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isVideoCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mVisible:Z

    .line 52
    iget-boolean v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mVisible:Z

    if-eqz v1, :cond_2

    .line 53
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    .line 48
    :goto_1
    return-void

    .line 51
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 55
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 86
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 75
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->setVisibility(I)V

    .line 80
    return-void
.end method

.method public updateThumbnail(Lcom/android/camera/Thumbnail;)V
    .locals 2
    .param p1, "t"    # Lcom/android/camera/Thumbnail;

    .prologue
    const/4 v1, 0x0

    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mValideThumbnail:Z

    .line 37
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mValideThumbnail:Z

    goto :goto_0
.end method

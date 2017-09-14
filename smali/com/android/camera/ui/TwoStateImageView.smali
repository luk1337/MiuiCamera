.class public Lcom/android/camera/ui/TwoStateImageView;
.super Landroid/widget/ImageView;
.source "TwoStateImageView.java"


# instance fields
.field private final DISABLED_ALPHA:F

.field private mFilterEnabled:Z

.field private mFilterInPressState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/camera/ui/TwoStateImageView;->DISABLED_ALPHA:F

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterEnabled:Z

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterInPressState:Z

    .line 31
    return-void
.end method


# virtual methods
.method public enableFilter(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterEnabled:Z

    .line 58
    return-void
.end method

.method public enablePressFilter(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterInPressState:Z

    .line 62
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 42
    iget-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterEnabled:Z

    if-eqz v0, :cond_0

    .line 43
    if-eqz p1, :cond_1

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TwoStateImageView;->setAlpha(F)V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TwoStateImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterInPressState:Z

    if-eqz v0, :cond_1

    .line 53
    iget-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterInPressState:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/TwoStateImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0
.end method

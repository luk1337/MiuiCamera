.class public Lcom/android/camera/ui/PopupMenuItem;
.super Landroid/widget/RelativeLayout;
.source "PopupMenuItem.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private final DISABLED_ALPHA:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 8
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/camera/ui/PopupMenuItem;->DISABLED_ALPHA:F

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/camera/ui/PopupMenuItem;->DISABLED_ALPHA:F

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/camera/ui/PopupMenuItem;->DISABLED_ALPHA:F

    .line 14
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 23
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PopupMenuItem;->setAlpha(F)V

    .line 53
    :goto_0
    return-void

    .line 58
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PopupMenuItem;->setAlpha(F)V

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 6
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 29
    neg-int p1, p1

    .line 30
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 31
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/PopupMenuItem;->getRotation()F

    move-result v3

    float-to-int v2, v3

    .line 32
    .local v2, "rotation":I
    if-ltz v2, :cond_1

    rem-int/lit16 v1, v2, 0x168

    .line 33
    .local v1, "r":I
    :goto_1
    sub-int v0, p1, v1

    .line 34
    .local v0, "deltaR":I
    if-nez v0, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/android/camera/ui/PopupMenuItem;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 36
    return-void

    .line 30
    .end local v0    # "deltaR":I
    .end local v1    # "r":I
    .end local v2    # "rotation":I
    :cond_0
    rem-int/lit16 v3, p1, 0x168

    add-int/lit16 p1, v3, 0x168

    goto :goto_0

    .line 32
    .restart local v2    # "rotation":I
    :cond_1
    rem-int/lit16 v3, v2, 0x168

    add-int/lit16 v1, v3, 0x168

    goto :goto_1

    .line 38
    .restart local v0    # "deltaR":I
    .restart local v1    # "r":I
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xb4

    if-le v3, v4, :cond_3

    .line 39
    if-ltz v0, :cond_4

    .line 40
    add-int/lit16 v0, v0, -0x168

    .line 45
    :cond_3
    :goto_2
    if-eqz p2, :cond_5

    .line 46
    invoke-virtual {p0}, Lcom/android/camera/ui/PopupMenuItem;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    add-int v4, v2, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    div-int/lit16 v4, v4, 0x10e

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 28
    :goto_3
    return-void

    .line 42
    :cond_4
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 48
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/PopupMenuItem;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    add-int v4, v2, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_3
.end method

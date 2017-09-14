.class public Lcom/android/camera/ui/TwoStateTextView;
.super Landroid/widget/TextView;
.source "TwoStateTextView.java"


# instance fields
.field private final DISABLED_ALPHA:F

.field private mFilterEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/TwoStateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/camera/ui/TwoStateTextView;->DISABLED_ALPHA:F

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/TwoStateTextView;->mFilterEnabled:Z

    .line 11
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 22
    iget-boolean v0, p0, Lcom/android/camera/ui/TwoStateTextView;->mFilterEnabled:Z

    if-eqz v0, :cond_0

    .line 23
    if-eqz p1, :cond_1

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TwoStateTextView;->setAlpha(F)V

    .line 20
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TwoStateTextView;->setAlpha(F)V

    goto :goto_0
.end method

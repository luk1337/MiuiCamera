.class public Lcom/android/camera/aosp_porting/animation/BackEaseOutInterpolator;
.super Ljava/lang/Object;
.source "BackEaseOutInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mOvershot:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/aosp_porting/animation/BackEaseOutInterpolator;-><init>(F)V

    .line 19
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "overshot"    # F

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/android/camera/aosp_porting/animation/BackEaseOutInterpolator;->mOvershot:F

    .line 26
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "t"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 32
    iget v1, p0, Lcom/android/camera/aosp_porting/animation/BackEaseOutInterpolator;->mOvershot:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const v0, 0x3fd9cd60

    .line 33
    .local v0, "s":F
    :goto_0
    sub-float/2addr p1, v3

    .line 34
    mul-float v1, p1, p1

    add-float v2, v0, v3

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    return v1

    .line 32
    .end local v0    # "s":F
    :cond_0
    iget v0, p0, Lcom/android/camera/aosp_porting/animation/BackEaseOutInterpolator;->mOvershot:F

    goto :goto_0
.end method

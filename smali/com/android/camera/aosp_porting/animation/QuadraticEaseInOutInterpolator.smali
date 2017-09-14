.class public Lcom/android/camera/aosp_porting/animation/QuadraticEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "QuadraticEaseInOutInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "t"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    mul-float/2addr p1, v2

    .line 16
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 17
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    return v0

    .line 19
    :cond_0
    sub-float/2addr p1, v1

    .line 20
    sub-float v0, p1, v2

    mul-float/2addr v0, p1

    sub-float/2addr v0, v1

    const/high16 v1, -0x41000000    # -0.5f

    mul-float/2addr v0, v1

    return v0
.end method

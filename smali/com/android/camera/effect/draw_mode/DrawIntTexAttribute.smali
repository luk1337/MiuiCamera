.class public Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawIntTexAttribute.java"


# instance fields
.field public mHeight:I

.field public mTexId:I

.field public mWidth:I

.field public mX:I

.field public mY:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "texId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    .line 11
    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mX:I

    .line 12
    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mY:I

    .line 13
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    .line 14
    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    .line 15
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mTexId:I

    .line 16
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mTarget:I

    .line 10
    return-void
.end method

.class public abstract Lcom/android/camera/effect/draw_mode/DrawAttribute;
.super Ljava/lang/Object;
.source "DrawAttribute.java"


# instance fields
.field protected mTarget:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    .line 3
    return-void
.end method


# virtual methods
.method public getTarget()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return v0
.end method

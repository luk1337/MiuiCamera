.class abstract Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;
.super Ljava/lang/Object;
.source "SnapshotEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/renders/SnapshotEffectRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "WaterMark"
.end annotation


# instance fields
.field protected mOrientation:I

.field protected mPictureHeight:I

.field protected mPictureWidth:I

.field final synthetic this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;


# direct methods
.method public constructor <init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput p2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPictureWidth:I

    .line 263
    iput p3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mPictureHeight:I

    .line 264
    iput p4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->mOrientation:I

    .line 261
    return-void
.end method


# virtual methods
.method public abstract getCenterX()I
.end method

.method public abstract getCenterY()I
.end method

.method public abstract getHeight()I
.end method

.method public getLeft()I
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->getCenterX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract getTexture()Lcom/android/gallery3d/ui/BasicTexture;
.end method

.method public getTop()I
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->getCenterY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract getWidth()I
.end method

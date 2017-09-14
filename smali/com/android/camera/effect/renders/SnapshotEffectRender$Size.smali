.class Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;
.super Ljava/lang/Object;
.source "SnapshotEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/renders/SnapshotEffectRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput p2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    .line 248
    iput p3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    .line 246
    return-void
.end method

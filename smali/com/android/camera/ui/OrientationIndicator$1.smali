.class Lcom/android/camera/ui/OrientationIndicator$1;
.super Ljava/lang/Object;
.source "OrientationIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/OrientationIndicator;->updateVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/OrientationIndicator;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/OrientationIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/OrientationIndicator;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/camera/ui/OrientationIndicator$1;->this$0:Lcom/android/camera/ui/OrientationIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator$1;->this$0:Lcom/android/camera/ui/OrientationIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/OrientationIndicator;->setVisibility(I)V

    .line 85
    return-void
.end method

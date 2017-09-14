.class Lcom/android/camera/EmptyService$1;
.super Landroid/content/BroadcastReceiver;
.source "EmptyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/EmptyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/EmptyService;


# direct methods
.method constructor <init>(Lcom/android/camera/EmptyService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/EmptyService;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/camera/EmptyService$1;->this$0:Lcom/android/camera/EmptyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/EmptyService$1;->this$0:Lcom/android/camera/EmptyService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/EmptyService;->stopForeground(Z)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/EmptyService$1;->this$0:Lcom/android/camera/EmptyService;

    invoke-virtual {v0}, Lcom/android/camera/EmptyService;->stopSelf()V

    .line 16
    return-void
.end method

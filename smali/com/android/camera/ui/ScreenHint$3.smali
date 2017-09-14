.class Lcom/android/camera/ui/ScreenHint$3;
.super Ljava/lang/Object;
.source "ScreenHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ScreenHint;->showFirstUseHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ScreenHint;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ScreenHint;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ScreenHint;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint$3;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint$3;->this$0:Lcom/android/camera/ui/ScreenHint;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/ScreenHint;->-wrap0(Lcom/android/camera/ui/ScreenHint;Z)V

    .line 194
    return-void
.end method

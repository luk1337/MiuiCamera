.class public Lcom/android/camera/EmptyService;
.super Landroid/app/Service;
.source "EmptyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/EmptyService$1;
    }
.end annotation


# instance fields
.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 14
    new-instance v0, Lcom/android/camera/EmptyService$1;

    invoke-direct {v0, p0}, Lcom/android/camera/EmptyService$1;-><init>(Lcom/android/camera/EmptyService;)V

    iput-object v0, p0, Lcom/android/camera/EmptyService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 13
    return-void
.end method

.method private allocGraphicBuffers()V
    .locals 5

    .prologue
    .line 50
    const/16 v1, 0x3200

    const/16 v2, 0xa00

    const/4 v3, 0x1

    const/16 v4, 0x33

    invoke-static {v1, v2, v3, v4}, Landroid/view/GraphicBuffer;->create(IIII)Landroid/view/GraphicBuffer;

    move-result-object v0

    .line 51
    .local v0, "buffer":Landroid/view/GraphicBuffer;
    invoke-virtual {v0}, Landroid/view/GraphicBuffer;->destroy()V

    .line 49
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/camera/EmptyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/EmptyService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 28
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/EmptyService;->stopForeground(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/android/camera/EmptyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/EmptyService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 46
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 43
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 36
    new-instance v0, Landroid/app/Notification;

    const-string/jumbo v3, "camera service"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const/4 v2, -0x1

    move-object v1, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 37
    .local v0, "notification":Landroid/app/Notification;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/EmptyService;->startForeground(ILandroid/app/Notification;)V

    .line 38
    invoke-direct {p0}, Lcom/android/camera/EmptyService;->allocGraphicBuffers()V

    .line 39
    const/4 v1, 0x2

    return v1
.end method

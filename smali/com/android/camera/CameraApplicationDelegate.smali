.class public Lcom/android/camera/CameraApplicationDelegate;
.super Lmiui/external/ApplicationDelegate;
.source "CameraApplicationDelegate.java"


# static fields
.field private static appChannel:Ljava/lang/String;

.field private static appID:Ljava/lang/String;

.field private static appKey:Ljava/lang/String;

.field private static sContext:Lcom/android/camera/CameraAppImpl;


# instance fields
.field private mActivities:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoreSetting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "2882303761517373386"

    sput-object v0, Lcom/android/camera/CameraApplicationDelegate;->appID:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "5641737344386"

    sput-object v0, Lcom/android/camera/CameraApplicationDelegate;->appKey:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "ro.product.mod_device"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraApplicationDelegate;->appChannel:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraAppImpl;)V
    .locals 1
    .param p1, "cameraAppImpl"    # Lcom/android/camera/CameraAppImpl;

    .prologue
    .line 27
    invoke-direct {p0}, Lmiui/external/ApplicationDelegate;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    .line 28
    sput-object p1, Lcom/android/camera/CameraApplicationDelegate;->sContext:Lcom/android/camera/CameraAppImpl;

    .line 26
    return-void
.end method

.method public static getAndroidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/camera/CameraApplicationDelegate;->sContext:Lcom/android/camera/CameraAppImpl;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    .line 67
    if-nez p1, :cond_0

    monitor-exit p0

    .line 68
    return-void

    .line 70
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 66
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeAllActivitiesBut(Landroid/app/Activity;)V
    .locals 4
    .param p1, "current"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 83
    .local v1, "i":I
    const/4 v2, 0x0

    .end local v0    # "activity":Landroid/app/Activity;
    .local v2, "j":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/CameraApplicationDelegate;->getActivityCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraApplicationDelegate;->getActivity(I)Landroid/app/Activity;

    move-result-object v0

    .line 85
    .local v0, "activity":Landroid/app/Activity;
    if-eq v0, p1, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 87
    iget-object v3, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    monitor-exit p0

    .line 80
    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getActivity(I)Landroid/app/Activity;
    .locals 1
    .param p1, "index"    # I

    .prologue
    monitor-enter p0

    .line 43
    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/CameraApplicationDelegate;->getActivityCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt p1, v0, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 46
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getActivityCount()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSettingsFlag()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    return v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 33
    invoke-super {p0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    .line 34
    invoke-static {p0}, Lcom/android/camera/Util;->initialize(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lcom/android/camera/CameraApplicationDelegate;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraApplicationDelegate;->appID:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/CameraApplicationDelegate;->appKey:Ljava/lang/String;

    sget-object v3, Lcom/android/camera/CameraApplicationDelegate;->appChannel:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {v4}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->setUseSystemUploadingService(Z)V

    .line 37
    const/4 v0, 0x4

    const-wide/32 v2, 0x2bf20

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    .line 38
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    .line 39
    iput-boolean v4, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    .line 32
    return-void
.end method

.method public declared-synchronized removeActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    .line 74
    if-nez p1, :cond_0

    monitor-exit p0

    .line 75
    return-void

    .line 77
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 73
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetRestoreFlag()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    .line 54
    return-void
.end method

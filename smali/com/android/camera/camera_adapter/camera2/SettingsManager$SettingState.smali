.class Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/camera2/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SettingState"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field values:Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "values"    # Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;->key:Ljava/lang/String;

    .line 506
    iput-object p2, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;->values:Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;

    .line 504
    return-void
.end method

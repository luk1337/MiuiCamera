.class Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/camera2/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Values"
.end annotation


# instance fields
.field overriddenValue:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "overriddenValue"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;->value:Ljava/lang/String;

    .line 496
    iput-object p2, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    .line 494
    return-void
.end method

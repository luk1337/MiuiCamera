.class public Lcom/android/camera/backup/CameraSettingsBackupImpl;
.super Ljava/lang/Object;
.source "CameraSettingsBackupImpl.java"

# interfaces
.implements Lcom/xiaomi/settingsdk/backup/ICloudBackup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;
    }
.end annotation


# static fields
.field private static final PREF_ENTRIES:[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/camera/backup/CameraBackupSettings;->PREF_ENTRIES:[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    sput-object v0, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPrefixToEntries([Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .locals 10
    .param p0, "prefEntries"    # [Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .param p1, "sharedPrefName"    # Ljava/lang/String;

    .prologue
    .line 132
    array-length v8, p0

    new-array v2, v8, [Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    .line 133
    .local v2, "entriesWithPrefix":[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v8, p0

    if-ge v5, v8, :cond_8

    .line 134
    aget-object v3, p0, v5

    .line 135
    .local v3, "entry":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v7

    .line 137
    .local v7, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getCloudKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "cloudKey":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "localKey":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    .line 140
    .local v1, "defaultValue":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 141
    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    const-class v8, Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 142
    if-nez v1, :cond_1

    .line 143
    invoke-static {v0, v6}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    .line 166
    .end local v1    # "defaultValue":Ljava/lang/Object;
    .end local v4    # "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    :cond_0
    :goto_1
    aput-object v4, v2, v5

    .line 133
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 145
    .restart local v1    # "defaultValue":Ljava/lang/Object;
    .restart local v4    # "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    :cond_1
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v0, v6, v8}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    goto :goto_1

    .line 147
    .restart local v1    # "defaultValue":Ljava/lang/Object;
    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    :cond_2
    const-class v8, Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 148
    if-nez v1, :cond_3

    .line 149
    invoke-static {v0, v6}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    goto :goto_1

    .line 151
    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    :cond_3
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v0, v6, v8}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    goto :goto_1

    .line 153
    .restart local v1    # "defaultValue":Ljava/lang/Object;
    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    :cond_4
    const-class v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 154
    if-nez v1, :cond_5

    .line 155
    invoke-static {v0, v6}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    goto :goto_1

    .line 157
    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    :cond_5
    check-cast v1, Ljava/lang/String;

    .end local v1    # "defaultValue":Ljava/lang/Object;
    invoke-static {v0, v6, v1}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    goto :goto_1

    .line 159
    .restart local v1    # "defaultValue":Ljava/lang/Object;
    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    :cond_6
    const-class v8, Ljava/lang/Long;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 160
    if-nez v1, :cond_7

    .line 161
    invoke-static {v0, v6}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createLongEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    goto :goto_1

    .line 163
    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    :cond_7
    check-cast v1, Ljava/lang/Long;

    .end local v1    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v0, v6, v8, v9}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createLongEntry(Ljava/lang/String;Ljava/lang/String;J)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v4

    .local v4, "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    goto :goto_1

    .line 168
    .end local v0    # "cloudKey":Ljava/lang/String;
    .end local v3    # "entry":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .end local v4    # "entryWithPrefix":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .end local v6    # "localKey":Ljava/lang/String;
    .end local v7    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    return-object v2
.end method

.method private static checkCameraId(I)Z
    .locals 3
    .param p0, "cameraId"    # I

    .prologue
    const/4 v0, 0x0

    .line 49
    if-gez p0, :cond_0

    .line 50
    return v0

    .line 51
    :cond_0
    const/4 v0, 0x2

    if-lt p0, v0, :cond_1

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cameraId is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static getAvaliableCameraIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "availableCameraIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    .line 121
    .local v1, "backCameraId":I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    .line 122
    .local v2, "frontCameraId":I
    invoke-static {v1}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->checkCameraId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    invoke-static {v2}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->checkCameraId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_1
    return-object v0
.end method

.method private static getCloudPrefixByCameraIdAndMode(ILcom/android/camera/module/BaseModule$CameraMode;)Ljava/lang/String;
    .locals 4
    .param p0, "cameraId"    # I
    .param p1, "mode"    # Lcom/android/camera/module/BaseModule$CameraMode;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->checkCameraId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 36
    .local v0, "backCameraId":I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    .line 37
    .local v1, "frontCameraId":I
    if-ne p0, v0, :cond_1

    .line 38
    const/4 p0, 0x0

    .line 44
    .end local v0    # "backCameraId":I
    .end local v1    # "frontCameraId":I
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "camera_settings_simple_mode_local_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 45
    invoke-static {p0, p1}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 39
    .restart local v0    # "backCameraId":I
    .restart local v1    # "frontCameraId":I
    :cond_1
    if-ne p0, v1, :cond_0

    .line 40
    const/4 p0, 0x1

    goto :goto_0
.end method

.method private static getPrefixByCameraIdAndMode(ILcom/android/camera/module/BaseModule$CameraMode;)Ljava/lang/String;
    .locals 2
    .param p0, "cameraId"    # I
    .param p1, "mode"    # Lcom/android/camera/module/BaseModule$CameraMode;

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "camera_settings_simple_mode_local_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    invoke-static {p0, p1}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleBackupOrRestore(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .param p3, "handler"    # Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;

    .prologue
    .line 87
    if-nez p3, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    invoke-static {}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getAvaliableCameraIds()Ljava/util/List;

    move-result-object v2

    .line 91
    .local v2, "availableCameraIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/camera/module/BaseModule$CameraMode;->values()[Lcom/android/camera/module/BaseModule$CameraMode;

    move-result-object v15

    const/4 v13, 0x0

    array-length v0, v15

    move/from16 v16, v0

    move v14, v13

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_3

    aget-object v9, v15, v14

    .line 92
    .local v9, "mode":Lcom/android/camera/module/BaseModule$CameraMode;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "cameraId$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 94
    .local v3, "cameraId":I
    invoke-static {v3, v9}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getPrefixByCameraIdAndMode(ILcom/android/camera/module/BaseModule$CameraMode;)Ljava/lang/String;

    move-result-object v11

    .line 95
    .local v11, "sharedPrefName":Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 96
    .local v10, "sharedPref":Landroid/content/SharedPreferences;
    if-eqz v10, :cond_1

    .line 97
    sget-object v13, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    .line 98
    invoke-static {v3, v9}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getCloudPrefixByCameraIdAndMode(ILcom/android/camera/module/BaseModule$CameraMode;)Ljava/lang/String;

    move-result-object v17

    .line 97
    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->addPrefixToEntries([Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v6

    .line 99
    .local v6, "entriesWithPrefix":[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v10, v1, v6}, Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;->handle(Landroid/content/SharedPreferences;Lcom/xiaomi/settingsdk/backup/data/DataPackage;[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;)V

    goto :goto_1

    .line 91
    .end local v3    # "cameraId":I
    .end local v6    # "entriesWithPrefix":[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .end local v10    # "sharedPref":Landroid/content/SharedPreferences;
    .end local v11    # "sharedPrefName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto :goto_0

    .line 106
    .end local v4    # "cameraId$iterator":Ljava/util/Iterator;
    .end local v9    # "mode":Lcom/android/camera/module/BaseModule$CameraMode;
    :cond_3
    const-string/jumbo v13, "camera_settings_global"

    const/4 v14, 0x0

    .line 105
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 107
    .local v8, "globalSharedPref":Landroid/content/SharedPreferences;
    sget-object v13, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    const-string/jumbo v14, "camera_settings_global"

    invoke-static {v13, v14}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->addPrefixToEntries([Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v5

    .line 108
    .local v5, "entriesWithGlobalPrefix":[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v8, v1, v5}, Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;->handle(Landroid/content/SharedPreferences;Lcom/xiaomi/settingsdk/backup/data/DataPackage;[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;)V

    .line 111
    const-string/jumbo v13, "camera_settings_simple_mode_global"

    .line 112
    const/4 v14, 0x0

    .line 111
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 113
    .local v12, "simpleModeGlobalSharedPref":Landroid/content/SharedPreferences;
    sget-object v13, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    .line 114
    const-string/jumbo v14, "camera_settings_simple_mode_global"

    .line 113
    invoke-static {v13, v14}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->addPrefixToEntries([Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v7

    .line 115
    .local v7, "entriesWithSimpleModeGlobalPrefix":[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v12, v1, v7}, Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;->handle(Landroid/content/SharedPreferences;Lcom/xiaomi/settingsdk/backup/data/DataPackage;[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;)V

    .line 86
    return-void
.end method


# virtual methods
.method public getCurrentVersion(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public onBackupSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 64
    const-string/jumbo v1, "CameraSettingsBackupImpl"

    const-string/jumbo v2, "Backing up settings to cloud."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Lcom/android/camera/backup/CameraSettingsBackupImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/backup/CameraSettingsBackupImpl$1;-><init>(Lcom/android/camera/backup/CameraSettingsBackupImpl;)V

    .line 71
    .local v0, "backupHandler":Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->handleBackupOrRestore(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;)V

    .line 63
    return-void
.end method

.method public onRestoreSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .param p3, "packageVersion"    # I

    .prologue
    .line 76
    const-string/jumbo v1, "CameraSettingsBackupImpl"

    const-string/jumbo v2, "Restoring settings from cloud"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Lcom/android/camera/backup/CameraSettingsBackupImpl$2;

    invoke-direct {v0, p0}, Lcom/android/camera/backup/CameraSettingsBackupImpl$2;-><init>(Lcom/android/camera/backup/CameraSettingsBackupImpl;)V

    .line 83
    .local v0, "restoreHandler":Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->handleBackupOrRestore(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;)V

    .line 75
    return-void
.end method

.class final enum Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;
.super Ljava/lang/Enum;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BackupState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

.field public static final enum CAPTURED:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

.field public static final enum ENCODED:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

.field public static final enum NONE:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

.field public static final enum PROCESSED:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1601
    new-instance v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->NONE:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    .line 1602
    new-instance v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    const-string/jumbo v1, "CAPTURED"

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->CAPTURED:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    .line 1603
    new-instance v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    const-string/jumbo v1, "PROCESSED"

    invoke-direct {v0, v1, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->PROCESSED:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    .line 1604
    new-instance v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    const-string/jumbo v1, "ENCODED"

    invoke-direct {v0, v1, v5}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->ENCODED:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    .line 1600
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->NONE:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->CAPTURED:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->PROCESSED:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->ENCODED:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    aput-object v1, v0, v5

    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->$VALUES:[Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1600
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1600
    const-class v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    return-object v0
.end method

.method public static values()[Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;
    .locals 1

    .prologue
    .line 1600
    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->$VALUES:[Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    return-object v0
.end method

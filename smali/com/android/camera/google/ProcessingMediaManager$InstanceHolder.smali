.class Lcom/android/camera/google/ProcessingMediaManager$InstanceHolder;
.super Ljava/lang/Object;
.source "ProcessingMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/google/ProcessingMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/android/camera/google/ProcessingMediaManager;


# direct methods
.method static synthetic -get0()Lcom/android/camera/google/ProcessingMediaManager;
    .locals 1

    sget-object v0, Lcom/android/camera/google/ProcessingMediaManager$InstanceHolder;->sInstance:Lcom/android/camera/google/ProcessingMediaManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/google/ProcessingMediaManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/google/ProcessingMediaManager;-><init>(Lcom/android/camera/google/ProcessingMediaManager;)V

    sput-object v0, Lcom/android/camera/google/ProcessingMediaManager$InstanceHolder;->sInstance:Lcom/android/camera/google/ProcessingMediaManager;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

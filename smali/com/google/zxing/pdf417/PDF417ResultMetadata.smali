.class public final Lcom/google/zxing/pdf417/PDF417ResultMetadata;
.super Ljava/lang/Object;
.source "PDF417ResultMetadata.java"


# instance fields
.field private fileId:Ljava/lang/String;

.field private lastSegment:Z

.field private optionalData:[I

.field private segmentIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setFileId(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileId"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileId:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setLastSegment(Z)V
    .locals 0
    .param p1, "lastSegment"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->lastSegment:Z

    .line 59
    return-void
.end method

.method public setOptionalData([I)V
    .locals 0
    .param p1, "optionalData"    # [I

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->optionalData:[I

    .line 51
    return-void
.end method

.method public setSegmentIndex(I)V
    .locals 0
    .param p1, "segmentIndex"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->segmentIndex:I

    .line 35
    return-void
.end method

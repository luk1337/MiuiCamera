.class Lcom/android/camera/ui/GLSurfaceTexture$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ui/GLSurfaceTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method static synthetic -set0(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z

    return p1
.end method

.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ui/GLSurfaceTexture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "glSurfaceTextureWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/camera/ui/GLSurfaceTexture;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 950
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1482
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSizeChanged:Z

    .line 951
    iput v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWidth:I

    .line 952
    iput v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHeight:I

    .line 953
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    .line 954
    iput v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderMode:I

    .line 955
    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    .line 949
    return-void
.end method

.method private guardedRun()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 997
    new-instance v19, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    .line 998
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    .line 999
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    .line 1001
    const/4 v8, 0x0

    .line 1002
    .local v8, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1003
    .local v3, "createEglContext":Z
    const/4 v4, 0x0

    .line 1004
    .local v4, "createEglSurface":Z
    const/4 v5, 0x0

    .line 1005
    .local v5, "createGlInterface":Z
    const/4 v10, 0x0

    .line 1006
    .local v10, "lostEglContext":Z
    const/4 v13, 0x0

    .line 1007
    .local v13, "sizeChanged":Z
    const/16 v18, 0x0

    .line 1008
    .local v18, "wantRenderNotification":Z
    const/4 v6, 0x0

    .line 1009
    .local v6, "doRenderNotification":Z
    const/4 v2, 0x0

    .line 1010
    .local v2, "askedToReleaseEglContext":Z
    const/16 v17, 0x0

    .line 1011
    .local v17, "w":I
    const/4 v9, 0x0

    .line 1012
    .local v9, "h":I
    const/4 v7, 0x0

    .line 1015
    .end local v8    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1017
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldExit:Z

    move/from16 v19, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v19, :cond_1

    :try_start_2
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1285
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    .line 1286
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    .line 1287
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v20

    .line 1018
    return-void

    .line 1285
    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19

    .line 1021
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Runnable;

    move-object v7, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    monitor-exit v20

    .line 1188
    if-eqz v7, :cond_16

    .line 1189
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1190
    const/4 v7, 0x0

    .local v7, "event":Ljava/lang/Runnable;
    goto :goto_0

    .line 1027
    .end local v7    # "event":Ljava/lang/Runnable;
    :cond_2
    const/4 v11, 0x0

    .line 1028
    .local v11, "pausing":Z
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 1029
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    .line 1030
    .local v11, "pausing":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z

    .line 1031
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    .line 1038
    .end local v11    # "pausing":Z
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1042
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    .line 1043
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V

    .line 1044
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldReleaseEglContext:Z

    .line 1045
    const/4 v2, 0x1

    .line 1049
    :cond_4
    if-eqz v10, :cond_5

    .line 1050
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    .line 1051
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V

    .line 1052
    const/4 v10, 0x0

    .line 1056
    :cond_5
    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1060
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    .line 1064
    :cond_6
    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ui/GLSurfaceTexture;

    .line 1066
    .local v14, "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    if-nez v14, :cond_10

    .line 1067
    const/4 v12, 0x0

    .line 1068
    .local v12, "preserveEglContextOnPause":Z
    :goto_3
    if-eqz v12, :cond_7

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1069
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V

    .line 1077
    .end local v12    # "preserveEglContextOnPause":Z
    .end local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    :cond_8
    if-eqz v11, :cond_9

    .line 1078
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->finish()V

    .line 1087
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11

    .line 1100
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1104
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    .line 1105
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    .line 1108
    :cond_b
    if-eqz v6, :cond_c

    .line 1112
    const/16 v18, 0x0

    .line 1113
    const/4 v6, 0x0

    .line 1114
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z

    .line 1115
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    .line 1119
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->readyToDraw()Z

    move-result v19

    if-eqz v19, :cond_15

    .line 1122
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-nez v19, :cond_d

    .line 1123
    if-eqz v2, :cond_13

    .line 1124
    const/4 v2, 0x0

    .line 1139
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14

    .line 1146
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_15

    .line 1147
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSizeChanged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 1148
    const/4 v13, 0x1

    .line 1149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWidth:I

    move/from16 v17, v0

    .line 1150
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHeight:I

    .line 1151
    const/16 v18, 0x1

    .line 1159
    const/4 v4, 0x1

    .line 1161
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSizeChanged:Z

    .line 1163
    :cond_f
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    .line 1164
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2

    .line 1015
    :catchall_1
    move-exception v19

    :try_start_7
    monitor-exit v20

    throw v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1281
    :catchall_2
    move-exception v19

    .line 1285
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    .line 1286
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    .line 1287
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    monitor-exit v20

    .line 1281
    throw v19

    .line 1067
    .restart local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    :cond_10
    :try_start_9
    invoke-static {v14}, Lcom/android/camera/ui/GLSurfaceTexture;->-get6(Lcom/android/camera/ui/GLSurfaceTexture;)Z

    move-result v12

    goto/16 :goto_3

    .line 1091
    .end local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 1092
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    .line 1094
    :cond_12
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    .line 1095
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSurfaceIsBad:Z

    .line 1096
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    goto/16 :goto_4

    .line 1125
    :cond_13
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->tryAcquireEglContextLocked(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v19

    if-eqz v19, :cond_d

    .line 1127
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->start()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1132
    const/16 v19, 0x1

    :try_start_b
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    .line 1133
    const/4 v3, 0x1

    .line 1135
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    goto/16 :goto_5

    .line 1128
    :catch_0
    move-exception v16

    .line 1129
    .local v16, "t":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->releaseEglContextLocked(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V

    .line 1130
    throw v16

    .line 1140
    .end local v16    # "t":Ljava/lang/RuntimeException;
    :cond_14
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    .line 1141
    const/4 v4, 0x1

    .line 1142
    const/4 v5, 0x1

    .line 1143
    const/4 v13, 0x1

    goto/16 :goto_6

    .line 1184
    :cond_15
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->wait()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1

    .line 1194
    :cond_16
    if-eqz v4, :cond_17

    .line 1198
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->createSurface()Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 1199
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1200
    const/16 v19, 0x1

    :try_start_d
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1201
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    monitor-exit v20

    .line 1211
    const/4 v4, 0x0

    .line 1214
    :cond_17
    if-eqz v5, :cond_18

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v8, v0

    .line 1217
    .local v8, "gl":Ljavax/microedition/khronos/opengles/GL10;
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1218
    const/4 v5, 0x0

    .line 1221
    .end local v8    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_18
    if-eqz v3, :cond_1a

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ui/GLSurfaceTexture;

    .line 1226
    .restart local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    if-eqz v14, :cond_19

    .line 1227
    invoke-static {v14}, Lcom/android/camera/ui/GLSurfaceTexture;->-get7(Lcom/android/camera/ui/GLSurfaceTexture;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v8, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1229
    :cond_19
    const/4 v3, 0x0

    .line 1232
    .end local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    :cond_1a
    if-eqz v13, :cond_1c

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ui/GLSurfaceTexture;

    .line 1237
    .restart local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    if-eqz v14, :cond_1b

    .line 1238
    invoke-static {v14}, Lcom/android/camera/ui/GLSurfaceTexture;->-get7(Lcom/android/camera/ui/GLSurfaceTexture;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v8, v1, v9}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1240
    :cond_1b
    const/4 v13, 0x0

    .line 1247
    .end local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ui/GLSurfaceTexture;

    .line 1248
    .restart local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    if-eqz v14, :cond_1d

    .line 1249
    invoke-static {v14}, Lcom/android/camera/ui/GLSurfaceTexture;->-get7(Lcom/android/camera/ui/GLSurfaceTexture;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1252
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->swap()I

    move-result v15

    .line 1253
    .local v15, "swapError":I
    sparse-switch v15, :sswitch_data_0

    .line 1267
    const-string/jumbo v19, "GLThread"

    const-string/jumbo v20, "eglSwapBuffers"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v15}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1269
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1270
    const/16 v19, 0x1

    :try_start_f
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSurfaceIsBad:Z

    .line 1271
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    monitor-exit v20

    .line 1276
    :goto_7
    :sswitch_0
    if-eqz v18, :cond_0

    .line 1277
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1199
    .end local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    .end local v15    # "swapError":I
    :catchall_3
    move-exception v19

    monitor-exit v20

    throw v19

    .line 1204
    :cond_1e
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1205
    const/16 v19, 0x1

    :try_start_11
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1206
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSurfaceIsBad:Z

    .line 1207
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    monitor-exit v20

    goto/16 :goto_0

    .line 1204
    :catchall_4
    move-exception v19

    monitor-exit v20

    throw v19

    .line 1260
    .restart local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    .restart local v15    # "swapError":I
    :sswitch_1
    const/4 v10, 0x1

    .line 1261
    goto :goto_7

    .line 1269
    :catchall_5
    move-exception v19

    monitor-exit v20

    throw v19
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1285
    .end local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    .end local v15    # "swapError":I
    :catchall_6
    move-exception v19

    monitor-exit v20

    throw v19

    .line 1253
    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1297
    iget-boolean v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHasSurface:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSurfaceIsBad:Z

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    .line 1298
    :cond_2
    iget v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHeight:I

    if-lez v2, :cond_0

    .line 1299
    iget-boolean v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderMode:I

    if-eq v2, v0, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->finish()V

    .line 992
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    .line 993
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->releaseEglContextLocked(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V

    .line 989
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 979
    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 980
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    .line 981
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->destroySurface()V

    .line 978
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1293
    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->readyToDraw()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1313
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1314
    :try_start_0
    iget v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1313
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1363
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1367
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    .line 1368
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    .line 1369
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    monitor-exit v2

    .line 1362
    return-void

    .line 1374
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1375
    :catch_0
    move-exception v0

    .line 1376
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1363
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1383
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1387
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    .line 1388
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    .line 1389
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z

    .line 1390
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    .line 1391
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    monitor-exit v2

    .line 1382
    return-void

    .line 1396
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1397
    :catch_0
    move-exception v0

    .line 1398
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1383
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onWindowResize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1405
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1406
    :try_start_0
    iput p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWidth:I

    .line 1407
    iput p2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHeight:I

    .line 1408
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSizeChanged:Z

    .line 1409
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    .line 1410
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z

    .line 1411
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    .line 1414
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    monitor-exit v2

    .line 1404
    return-void

    .line 1414
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    .line 1415
    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->ableToDraw()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 1414
    if-eqz v1, :cond_0

    .line 1420
    :try_start_2
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1421
    :catch_0
    move-exception v0

    .line 1422
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1405
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1431
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1432
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldExit:Z

    .line 1433
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    .line 1434
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1436
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1437
    :catch_0
    move-exception v0

    .line 1438
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1431
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    .line 1428
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldReleaseEglContext:Z

    .line 1446
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    .line 1444
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1319
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1320
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    .line 1321
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1318
    return-void

    .line 1319
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GLThread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->setName(Ljava/lang/String;)V

    .line 966
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V

    .line 959
    :goto_0
    return-void

    .line 967
    :catch_0
    move-exception v0

    .line 970
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V

    goto :goto_0

    .line 969
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    .line 970
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V

    .line 969
    throw v1
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .prologue
    .line 1303
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1304
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1306
    :cond_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1307
    :try_start_0
    iput p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderMode:I

    .line 1308
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1302
    return-void

    .line 1306
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    .prologue
    .line 1326
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1330
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHasSurface:Z

    .line 1331
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1332
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    .line 1333
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    .line 1334
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mFinishedCreatingEglSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    monitor-exit v2

    .line 1325
    return-void

    .line 1335
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 1337
    :try_start_2
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1338
    :catch_0
    move-exception v0

    .line 1339
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1326
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

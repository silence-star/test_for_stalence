.class Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;


# direct methods
.method constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v1, v1, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$300(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I
    invoke-static {v3}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$400(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I
    invoke-static {v4}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$500(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I
    invoke-static {v5}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$600(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I
    invoke-static {v6}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$700(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mLeftOrRight:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$800(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->rate:D
    invoke-static {v8}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$900(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)D

    move-result-wide v8

    iget-object v10, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-direct/range {v0 .. v10}, Lcom/android/server/display/nubiaOverlayDisplayWindow;-><init>(Landroid/content/Context;Ljava/lang/String;IIIILjava/lang/String;DLcom/android/server/display/nubiaOverlayDisplayWindow$Listener;)V

    .local v0, window:Lcom/android/server/display/nubiaOverlayDisplayWindow;
    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->show()V

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v1, v1, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    #setter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/nubiaOverlayDisplayWindow;
    invoke-static {v1, v0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$1002(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

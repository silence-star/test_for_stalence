.class Lcom/android/internal/policy/impl/NubiaGlobalActions$11;
.super Landroid/content/BroadcastReceiver;
.source "NubiaGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/NubiaGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$11;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, reason:Ljava/lang/String;
    const-string v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$11;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$1000(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .end local v1           #reason:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$11;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$800(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$11;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #setter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$802(Lcom/android/internal/policy/impl/NubiaGlobalActions;Z)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$11;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    const/4 v3, 0x1

    #calls: Lcom/android/internal/policy/impl/NubiaGlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$500(Lcom/android/internal/policy/impl/NubiaGlobalActions;Z)V

    goto :goto_0

    :cond_3
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$11;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$1000(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.class Lcom/android/internal/policy/impl/NubiaGlobalActions$8$1;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/NubiaGlobalActions$8;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/NubiaGlobalActions$8;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/NubiaGlobalActions$8;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$8$1;->this$1:Lcom/android/internal/policy/impl/NubiaGlobalActions$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$8$1;->this$1:Lcom/android/internal/policy/impl/NubiaGlobalActions$8;

    iget-object v0, v0, Lcom/android/internal/policy/impl/NubiaGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$1000(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/NubiaGlobalActions$8$1$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$8$1$1;-><init>(Lcom/android/internal/policy/impl/NubiaGlobalActions$8$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.class final enum Lcom/android/server/pm/InstallerHelper$Result;
.super Ljava/lang/Enum;
.source "InstallerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstallerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/pm/InstallerHelper$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/pm/InstallerHelper$Result;

.field public static final enum INSTALLED_IS_MAX:Lcom/android/server/pm/InstallerHelper$Result;

.field public static final enum PRESET_IS_MAX:Lcom/android/server/pm/InstallerHelper$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/pm/InstallerHelper$Result;

    const-string v1, "PRESET_IS_MAX"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/InstallerHelper$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/InstallerHelper$Result;->PRESET_IS_MAX:Lcom/android/server/pm/InstallerHelper$Result;

    new-instance v0, Lcom/android/server/pm/InstallerHelper$Result;

    const-string v1, "INSTALLED_IS_MAX"

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/InstallerHelper$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/InstallerHelper$Result;->INSTALLED_IS_MAX:Lcom/android/server/pm/InstallerHelper$Result;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/pm/InstallerHelper$Result;

    sget-object v1, Lcom/android/server/pm/InstallerHelper$Result;->PRESET_IS_MAX:Lcom/android/server/pm/InstallerHelper$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/InstallerHelper$Result;->INSTALLED_IS_MAX:Lcom/android/server/pm/InstallerHelper$Result;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/pm/InstallerHelper$Result;->$VALUES:[Lcom/android/server/pm/InstallerHelper$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/pm/InstallerHelper$Result;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/server/pm/InstallerHelper$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallerHelper$Result;

    return-object v0
.end method

.method public static values()[Lcom/android/server/pm/InstallerHelper$Result;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/pm/InstallerHelper$Result;->$VALUES:[Lcom/android/server/pm/InstallerHelper$Result;

    invoke-virtual {v0}, [Lcom/android/server/pm/InstallerHelper$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/pm/InstallerHelper$Result;

    return-object v0
.end method

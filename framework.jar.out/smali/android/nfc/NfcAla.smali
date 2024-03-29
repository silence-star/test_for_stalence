.class public final Landroid/nfc/NfcAla;
.super Ljava/lang/Object;
.source "NfcAla.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcAla"


# instance fields
.field private mService:Landroid/nfc/INfcAla;


# direct methods
.method public constructor <init>(Landroid/nfc/INfcAla;)V
    .locals 0
    .parameter "mAlaService"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcAla;->mService:Landroid/nfc/INfcAla;

    return-void
.end method


# virtual methods
.method public appletLoadApplet(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "pkg"
    .parameter "choice"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcAla;->mService:Landroid/nfc/INfcAla;

    invoke-interface {v2, p1, p2}, Landroid/nfc/INfcAla;->appletLoadApplet(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .local v1, status:I
    if-nez v1, :cond_0

    return v1

    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to Load applet"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #status:I
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NfcAla"

    const-string v3, "RemoteException in AppletLoadApplet(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in AppletLoadApplet()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getListofApplets(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "pkg"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcAla;->mService:Landroid/nfc/INfcAla;

    invoke-interface {v2, p1, p2}, Landroid/nfc/INfcAla;->getListofApplets(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, num:I
    return v1

    .end local v1           #num:I
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NfcAla"

    const-string v3, "RemoteException in GetListofApplets(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in GetListofApplets()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

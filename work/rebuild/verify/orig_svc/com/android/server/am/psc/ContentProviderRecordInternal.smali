.class public abstract Lcom/android/server/am/psc/ContentProviderRecordInternal;
.super Ljava/lang/Object;
.source "ContentProviderRecordInternal.java"


# instance fields
.field public final name:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/server/am/psc/ContentProviderRecordInternal;->name:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public abstract getConnectionsAt(I)Lcom/android/server/am/psc/ContentProviderConnectionInternal;
.end method

.method public abstract getHostProcess()Lcom/android/server/am/psc/ProcessRecordInternal;
.end method

.method public abstract hasExternalProcessHandles()Z
.end method

.method public abstract numberOfConnections()I
.end method

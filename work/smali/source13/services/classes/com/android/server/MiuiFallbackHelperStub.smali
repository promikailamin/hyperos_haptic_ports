.class public Lcom/android/server/MiuiFallbackHelperStub;
.super Ljava/lang/Object;
.source "MiuiFallbackHelperStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/MiuiFallbackHelperStub;
    .registers 1

    .line 8
    const-class v0, Lcom/android/server/MiuiFallbackHelperStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiFallbackHelperStub;

    return-object v0
.end method


# virtual methods
.method public restoreFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public snapshotFile(Ljava/lang/String;)V
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 12
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/MiuiFallbackHelperStub;->snapshotFile(Ljava/lang/String;J)V

    .line 13
    return-void
.end method

.method public snapshotFile(Ljava/lang/String;J)V
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "periodTime"    # J

    .line 17
    return-void
.end method

.class public Lcom/android/server/ScoutWatchdogInfo$ScoutId;
.super Ljava/lang/Object;
.source "ScoutWatchdogInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ScoutWatchdogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScoutId"
.end annotation


# instance fields
.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "mUuid"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/ScoutWatchdogInfo$ScoutId;->mUuid:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public getUuid()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/server/ScoutWatchdogInfo$ScoutId;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public setUuid(Ljava/lang/String;)V
    .registers 2
    .param p1, "mUuid"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/android/server/ScoutWatchdogInfo$ScoutId;->mUuid:Ljava/lang/String;

    .line 61
    return-void
.end method

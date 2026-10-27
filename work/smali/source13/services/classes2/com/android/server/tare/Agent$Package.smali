.class final Lcom/android/server/tare/Agent$Package;
.super Ljava/lang/Object;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Package"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    iput p1, p0, Lcom/android/server/tare/Agent$Package;->userId:I

    .line 992
    iput-object p2, p0, Lcom/android/server/tare/Agent$Package;->packageName:Ljava/lang/String;

    .line 993
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1002
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1003
    return v0

    .line 1005
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 1006
    return v1

    .line 1008
    :cond_8
    instance-of v2, p1, Lcom/android/server/tare/Agent$Package;

    if-eqz v2, :cond_21

    .line 1009
    move-object v2, p1

    check-cast v2, Lcom/android/server/tare/Agent$Package;

    .line 1010
    .local v2, "other":Lcom/android/server/tare/Agent$Package;
    iget v3, p0, Lcom/android/server/tare/Agent$Package;->userId:I

    iget v4, v2, Lcom/android/server/tare/Agent$Package;->userId:I

    if-ne v3, v4, :cond_20

    iget-object v3, p0, Lcom/android/server/tare/Agent$Package;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/tare/Agent$Package;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    move v0, v1

    :cond_20
    return v0

    .line 1012
    .end local v2    # "other":Lcom/android/server/tare/Agent$Package;
    :cond_21
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1017
    iget-object v0, p0, Lcom/android/server/tare/Agent$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/server/tare/Agent$Package;->userId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 997
    iget v0, p0, Lcom/android/server/tare/Agent$Package;->userId:I

    iget-object v1, p0, Lcom/android/server/tare/Agent$Package;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

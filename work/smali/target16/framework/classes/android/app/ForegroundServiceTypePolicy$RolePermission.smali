.class Landroid/app/ForegroundServiceTypePolicy$RolePermission;
.super Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RolePermission"
.end annotation


# instance fields
.field final blacklist mRole:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 1293
    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;-><init>(Ljava/lang/String;)V

    .line 1294
    iput-object p1, p0, Landroid/app/ForegroundServiceTypePolicy$RolePermission;->mRole:Ljava/lang/String;

    .line 1295
    return-void
.end method


# virtual methods
.method public blacklist checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I
    .registers 6

    .line 1301
    const-class p3, Landroid/app/role/RoleManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    .line 1302
    iget-object p3, p0, Landroid/app/ForegroundServiceTypePolicy$RolePermission;->mRole:Ljava/lang/String;

    .line 1303
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 1302
    invoke-virtual {p1, p3, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 1304
    if-eqz p1, :cond_1c

    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 1305
    const/4 p1, 0x0

    goto :goto_1d

    :cond_1c
    const/4 p1, -0x1

    .line 1304
    :goto_1d
    return p1
.end method

.class Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;
.super Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 250
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper-IA;)V

    return-void
.end method


# virtual methods
.method public getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 302
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 303
    return-object v0

    .line 307
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetmContext(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0x2000b000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_15} :catch_16

    return-object v0

    .line 309
    :catch_16
    move-exception v1

    .line 310
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultPermGrantPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)I
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 254
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetmContext(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    return v0
.end method

.method public getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
    .registers 6
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 288
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 289
    return-object v0

    .line 293
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetmContext(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_13} :catch_14

    return-object v0

    .line 294
    :catch_14
    move-exception v1

    .line 295
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultPermGrantPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-object v0
.end method

.method public grantPermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 268
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetmContext(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p3}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 270
    return-void
.end method

.method public isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z
    .registers 7
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 282
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetmContext(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public revokePermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 275
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetmContext(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 277
    return-void
.end method

.method public updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V
    .registers 13
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 261
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetmContext(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 263
    return-void
.end method

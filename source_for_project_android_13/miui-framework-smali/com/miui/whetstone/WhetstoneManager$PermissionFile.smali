.class public Lcom/miui/whetstone/WhetstoneManager$PermissionFile;
.super Ljava/lang/Object;
.source "WhetstoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/WhetstoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionFile"
.end annotation


# static fields
.field public static final blacklist L_VERSION_START_NUMBER:I = 0x15

.field public static final blacklist WHETSTONE_PERMISSION_ENTRY_NAME:Ljava/lang/String; = "permissions.xml"

.field public static final blacklist WHETSTONE_PERMISSION_FILE_NAME:Ljava/lang/String; = "WhetstonePermission.apk"

.field public static final blacklist WHETSTONE_VERSION_ENTRY_NAME:Ljava/lang/String; = "version"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist getDataWhetstonePermissionFile()Ljava/io/File;
    .registers 3

    .line 88
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/whetstone"

    const-string v2, "WhetstonePermission.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final blacklist getSystemWhetstonePermissionFile()Ljava/io/File;
    .registers 3

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "WhetstonePermission.apk"

    const/16 v2, 0x15

    if-lt v0, v2, :cond_10

    .line 81
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/etc/WhetstonePermission"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 83
    :cond_10
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/etc"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

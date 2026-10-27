.class public final enum Lmiui/drm/DrmManager$DrmResult;
.super Ljava/lang/Enum;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/drm/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrmResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/drm/DrmManager$DrmResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lmiui/drm/DrmManager$DrmResult;

.field public static final enum whitelist DRM_ERROR_ASSET_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

.field public static final enum whitelist DRM_ERROR_IMEI_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

.field public static final enum whitelist DRM_ERROR_RIGHT_FILE_NOT_EXISTS:Lmiui/drm/DrmManager$DrmResult;

.field public static final enum whitelist DRM_ERROR_RIGHT_OBJECT_IS_NULL:Lmiui/drm/DrmManager$DrmResult;

.field public static final enum whitelist DRM_ERROR_TIME_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

.field public static final enum whitelist DRM_ERROR_UNKNOWN:Lmiui/drm/DrmManager$DrmResult;

.field public static final enum whitelist DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 15

    .line 115
    new-instance v0, Lmiui/drm/DrmManager$DrmResult;

    const-string v1, "DRM_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/drm/DrmManager$DrmResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    .line 116
    new-instance v1, Lmiui/drm/DrmManager$DrmResult;

    const-string v3, "DRM_ERROR_IMEI_NOT_MATCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmiui/drm/DrmManager$DrmResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_IMEI_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    .line 117
    new-instance v3, Lmiui/drm/DrmManager$DrmResult;

    const-string v5, "DRM_ERROR_ASSET_NOT_MATCH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lmiui/drm/DrmManager$DrmResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_ASSET_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    .line 118
    new-instance v5, Lmiui/drm/DrmManager$DrmResult;

    const-string v7, "DRM_ERROR_TIME_NOT_MATCH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lmiui/drm/DrmManager$DrmResult;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_TIME_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    .line 119
    new-instance v7, Lmiui/drm/DrmManager$DrmResult;

    const-string v9, "DRM_ERROR_RIGHT_OBJECT_IS_NULL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lmiui/drm/DrmManager$DrmResult;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_RIGHT_OBJECT_IS_NULL:Lmiui/drm/DrmManager$DrmResult;

    .line 120
    new-instance v9, Lmiui/drm/DrmManager$DrmResult;

    const-string v11, "DRM_ERROR_RIGHT_FILE_NOT_EXISTS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lmiui/drm/DrmManager$DrmResult;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_RIGHT_FILE_NOT_EXISTS:Lmiui/drm/DrmManager$DrmResult;

    .line 121
    new-instance v11, Lmiui/drm/DrmManager$DrmResult;

    const-string v13, "DRM_ERROR_UNKNOWN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lmiui/drm/DrmManager$DrmResult;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_UNKNOWN:Lmiui/drm/DrmManager$DrmResult;

    .line 114
    const/4 v13, 0x7

    new-array v13, v13, [Lmiui/drm/DrmManager$DrmResult;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lmiui/drm/DrmManager$DrmResult;->$VALUES:[Lmiui/drm/DrmManager$DrmResult;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lmiui/drm/DrmManager$DrmResult;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 114
    const-class v0, Lmiui/drm/DrmManager$DrmResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/drm/DrmManager$DrmResult;

    return-object v0
.end method

.method public static whitelist values()[Lmiui/drm/DrmManager$DrmResult;
    .registers 1

    .line 114
    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->$VALUES:[Lmiui/drm/DrmManager$DrmResult;

    invoke-virtual {v0}, [Lmiui/drm/DrmManager$DrmResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/drm/DrmManager$DrmResult;

    return-object v0
.end method

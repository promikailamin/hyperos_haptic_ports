.class public final enum Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;
.super Ljava/lang/Enum;
.source "SettingState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

.field public static final enum BOOLEAN:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

.field public static final enum INTEGER:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

.field public static final enum INTEGER_PAIR:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

.field public static final enum STRING:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

.field public static final enum STRING_SET:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

.field public static final enum USB_PORT_MAP:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;


# direct methods
.method public static synthetic $values()[Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;
    .registers 6

    .line 76
    sget-object v0, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->BOOLEAN:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    sget-object v1, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->STRING:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    sget-object v2, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->INTEGER:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    sget-object v3, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->INTEGER_PAIR:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    sget-object v4, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->STRING_SET:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    sget-object v5, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->USB_PORT_MAP:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    filled-new-array/range {v0 .. v5}, [Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 77
    new-instance v0, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->BOOLEAN:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    .line 78
    new-instance v0, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    const-string v1, "STRING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->STRING:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    .line 79
    new-instance v0, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    const-string v1, "INTEGER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->INTEGER:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    .line 80
    new-instance v0, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    const-string v1, "INTEGER_PAIR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->INTEGER_PAIR:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    .line 81
    new-instance v0, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    const-string v1, "STRING_SET"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->STRING_SET:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    .line 82
    new-instance v0, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    const-string v1, "USB_PORT_MAP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->USB_PORT_MAP:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    .line 76
    invoke-static {}, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->$values()[Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->$VALUES:[Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;
    .registers 2

    .line 76
    const-class v0, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;
    .registers 1

    .line 76
    sget-object v0, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->$VALUES:[Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    invoke-virtual {v0}, [Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    return-object v0
.end method

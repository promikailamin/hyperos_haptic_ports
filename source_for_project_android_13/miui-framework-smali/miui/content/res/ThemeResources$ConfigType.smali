.class public final enum Lmiui/content/res/ThemeResources$ConfigType;
.super Ljava/lang/Enum;
.source "ThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/ThemeResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/content/res/ThemeResources$ConfigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lmiui/content/res/ThemeResources$ConfigType;

.field public static final enum whitelist THEME_FALLBACK:Lmiui/content/res/ThemeResources$ConfigType;

.field public static final enum whitelist THEME_VALUES:Lmiui/content/res/ThemeResources$ConfigType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 466
    new-instance v0, Lmiui/content/res/ThemeResources$ConfigType;

    const-string v1, "THEME_VALUES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/content/res/ThemeResources$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/content/res/ThemeResources$ConfigType;->THEME_VALUES:Lmiui/content/res/ThemeResources$ConfigType;

    .line 467
    new-instance v1, Lmiui/content/res/ThemeResources$ConfigType;

    const-string v3, "THEME_FALLBACK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmiui/content/res/ThemeResources$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmiui/content/res/ThemeResources$ConfigType;->THEME_FALLBACK:Lmiui/content/res/ThemeResources$ConfigType;

    .line 465
    const/4 v3, 0x2

    new-array v3, v3, [Lmiui/content/res/ThemeResources$ConfigType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lmiui/content/res/ThemeResources$ConfigType;->$VALUES:[Lmiui/content/res/ThemeResources$ConfigType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 465
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lmiui/content/res/ThemeResources$ConfigType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 465
    const-class v0, Lmiui/content/res/ThemeResources$ConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/content/res/ThemeResources$ConfigType;

    return-object v0
.end method

.method public static whitelist values()[Lmiui/content/res/ThemeResources$ConfigType;
    .registers 1

    .line 465
    sget-object v0, Lmiui/content/res/ThemeResources$ConfigType;->$VALUES:[Lmiui/content/res/ThemeResources$ConfigType;

    invoke-virtual {v0}, [Lmiui/content/res/ThemeResources$ConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/content/res/ThemeResources$ConfigType;

    return-object v0
.end method

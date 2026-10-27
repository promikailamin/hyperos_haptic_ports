.class public final enum Lmiui/util/font/FontType;
.super Ljava/lang/Enum;
.source "FontType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/util/font/FontType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lmiui/util/font/FontType;

.field public static final enum blacklist MITYPE:Lmiui/util/font/FontType;

.field public static final enum blacklist MITYPE_MONO:Lmiui/util/font/FontType;

.field public static final enum blacklist MIUI:Lmiui/util/font/FontType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 7
    new-instance v0, Lmiui/util/font/FontType;

    const-string v1, "MIUI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/font/FontType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/font/FontType;->MIUI:Lmiui/util/font/FontType;

    .line 8
    new-instance v1, Lmiui/util/font/FontType;

    const-string v3, "MITYPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmiui/util/font/FontType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmiui/util/font/FontType;->MITYPE:Lmiui/util/font/FontType;

    .line 9
    new-instance v3, Lmiui/util/font/FontType;

    const-string v5, "MITYPE_MONO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lmiui/util/font/FontType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmiui/util/font/FontType;->MITYPE_MONO:Lmiui/util/font/FontType;

    .line 6
    const/4 v5, 0x3

    new-array v5, v5, [Lmiui/util/font/FontType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lmiui/util/font/FontType;->$VALUES:[Lmiui/util/font/FontType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lmiui/util/font/FontType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lmiui/util/font/FontType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/util/font/FontType;

    return-object v0
.end method

.method public static blacklist values()[Lmiui/util/font/FontType;
    .registers 1

    .line 6
    sget-object v0, Lmiui/util/font/FontType;->$VALUES:[Lmiui/util/font/FontType;

    invoke-virtual {v0}, [Lmiui/util/font/FontType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/util/font/FontType;

    return-object v0
.end method

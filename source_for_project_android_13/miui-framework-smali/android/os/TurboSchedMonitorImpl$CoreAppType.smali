.class final enum Landroid/os/TurboSchedMonitorImpl$CoreAppType;
.super Ljava/lang/Enum;
.source "TurboSchedMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TurboSchedMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CoreAppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/os/TurboSchedMonitorImpl$CoreAppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/os/TurboSchedMonitorImpl$CoreAppType;

.field public static final enum blacklist ARTICLE_NEWS:Landroid/os/TurboSchedMonitorImpl$CoreAppType;

.field public static final enum blacklist AWEME:Landroid/os/TurboSchedMonitorImpl$CoreAppType;

.field public static final enum blacklist BILIBILI:Landroid/os/TurboSchedMonitorImpl$CoreAppType;

.field public static final enum blacklist GIFMAKER:Landroid/os/TurboSchedMonitorImpl$CoreAppType;

.field public static final enum blacklist TAOBAO:Landroid/os/TurboSchedMonitorImpl$CoreAppType;

.field public static final enum blacklist WECHAT:Landroid/os/TurboSchedMonitorImpl$CoreAppType;

.field public static final enum blacklist WEIBO:Landroid/os/TurboSchedMonitorImpl$CoreAppType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 15

    .line 182
    new-instance v0, Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    const-string v1, "AWEME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/TurboSchedMonitorImpl$CoreAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/TurboSchedMonitorImpl$CoreAppType;->AWEME:Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    .line 183
    new-instance v1, Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    const-string v3, "GIFMAKER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/os/TurboSchedMonitorImpl$CoreAppType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/os/TurboSchedMonitorImpl$CoreAppType;->GIFMAKER:Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    .line 184
    new-instance v3, Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    const-string v5, "WEIBO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/os/TurboSchedMonitorImpl$CoreAppType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/os/TurboSchedMonitorImpl$CoreAppType;->WEIBO:Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    .line 185
    new-instance v5, Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    const-string v7, "ARTICLE_NEWS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/os/TurboSchedMonitorImpl$CoreAppType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/os/TurboSchedMonitorImpl$CoreAppType;->ARTICLE_NEWS:Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    .line 186
    new-instance v7, Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    const-string v9, "TAOBAO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/os/TurboSchedMonitorImpl$CoreAppType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/os/TurboSchedMonitorImpl$CoreAppType;->TAOBAO:Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    .line 187
    new-instance v9, Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    const-string v11, "WECHAT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/os/TurboSchedMonitorImpl$CoreAppType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/os/TurboSchedMonitorImpl$CoreAppType;->WECHAT:Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    .line 188
    new-instance v11, Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    const-string v13, "BILIBILI"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/os/TurboSchedMonitorImpl$CoreAppType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/os/TurboSchedMonitorImpl$CoreAppType;->BILIBILI:Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    .line 181
    const/4 v13, 0x7

    new-array v13, v13, [Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Landroid/os/TurboSchedMonitorImpl$CoreAppType;->$VALUES:[Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/os/TurboSchedMonitorImpl$CoreAppType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 181
    const-class v0, Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/os/TurboSchedMonitorImpl$CoreAppType;
    .registers 1

    .line 181
    sget-object v0, Landroid/os/TurboSchedMonitorImpl$CoreAppType;->$VALUES:[Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    invoke-virtual {v0}, [Landroid/os/TurboSchedMonitorImpl$CoreAppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    return-object v0
.end method

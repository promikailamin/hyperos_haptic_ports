.class public Lmiui/content/res/ThemeResourcesEmpty;
.super Lmiui/content/res/ThemeResources;
.source "ThemeResourcesEmpty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/ThemeResourcesEmpty$LoadThemeValuesCallback;
    }
.end annotation


# static fields
.field public static blacklist sInstance:Lmiui/content/res/ThemeResourcesEmpty;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lmiui/content/res/ThemeResourcesEmpty;

    invoke-direct {v0}, Lmiui/content/res/ThemeResourcesEmpty;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 4

    .line 13
    sget-object v0, Lmiui/content/res/ThemeResourcesEmpty;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const-string v2, "FakeForEmpty"

    invoke-direct {p0, v1, v1, v2, v0}, Lmiui/content/res/ThemeResources;-><init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 14
    return-void
.end method


# virtual methods
.method public whitelist checkUpdate()J
    .registers 3

    .line 17
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getThemeStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # [J

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist hasThemeFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V
    .registers 3
    .param p1, "filterKey"    # Ljava/lang/String;
    .param p2, "values"    # Lmiui/content/res/ThemeValues;

    .line 29
    return-void
.end method

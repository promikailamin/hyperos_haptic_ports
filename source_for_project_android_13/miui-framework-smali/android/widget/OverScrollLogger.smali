.class Landroid/widget/OverScrollLogger;
.super Ljava/lang/Object;
.source "OverScrollLogger.java"


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "OverScroll"

.field private static final blacklist VERBOSE:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 12
    const-string v0, "OverScroll"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Landroid/widget/OverScrollLogger;->DEBUG:Z

    .line 13
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/widget/OverScrollLogger;->VERBOSE:Z

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist debug(Ljava/lang/String;)V
    .registers 2
    .param p0, "log"    # Ljava/lang/String;

    .line 16
    sget-boolean v0, Landroid/widget/OverScrollLogger;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 17
    const-string v0, "OverScroll"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_9
    return-void
.end method

.method public static varargs blacklist debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 22
    sget-boolean v0, Landroid/widget/OverScrollLogger;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 23
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverScroll"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_f
    return-void
.end method

.method public static blacklist verbose(Ljava/lang/String;)V
    .registers 2
    .param p0, "log"    # Ljava/lang/String;

    .line 28
    sget-boolean v0, Landroid/widget/OverScrollLogger;->VERBOSE:Z

    if-eqz v0, :cond_9

    .line 29
    const-string v0, "OverScroll"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_9
    return-void
.end method

.method public static varargs blacklist verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 34
    sget-boolean v0, Landroid/widget/OverScrollLogger;->VERBOSE:Z

    if-eqz v0, :cond_f

    .line 35
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverScroll"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_f
    return-void
.end method

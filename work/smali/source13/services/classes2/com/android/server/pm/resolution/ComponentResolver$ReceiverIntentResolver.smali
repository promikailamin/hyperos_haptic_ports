.class public final Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;
.super Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/resolution/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReceiverIntentResolver"
.end annotation


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .registers 3
    .param p1, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "userNeedsBadgingCache"    # Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 1264
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    .line 1265
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .registers 4
    .param p1, "orig"    # Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;
    .param p2, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p3, "userNeedsBadgingCache"    # Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 1271
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    .line 1272
    return-void
.end method


# virtual methods
.method protected getResolveList(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;
    .registers 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .line 1276
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/android/server/firewall/ExtraKeyValueFilter;
.super Ljava/lang/Object;
.source "ExtraKeyValueFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;


# instance fields
.field public final mKeyFilter:Ljava/lang/String;

.field public final mValueFilter:Lcom/android/server/firewall/StringFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Lcom/android/server/firewall/ExtraKeyValueFilter$1;

    const-string v1, "extra"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/ExtraKeyValueFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/ExtraKeyValueFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/server/firewall/StringFilter;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/firewall/ExtraKeyValueFilter;->mKeyFilter:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/android/server/firewall/ExtraKeyValueFilter;->mValueFilter:Lcom/android/server/firewall/StringFilter;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/firewall/StringFilter;Lcom/android/server/firewall/ExtraKeyValueFilter-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/firewall/ExtraKeyValueFilter;-><init>(Ljava/lang/String;Lcom/android/server/firewall/StringFilter;)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .registers 8

    .line 47
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 49
    :cond_8
    iget-object p2, p0, Lcom/android/server/firewall/ExtraKeyValueFilter;->mValueFilter:Lcom/android/server/firewall/StringFilter;

    iget-object p0, p0, Lcom/android/server/firewall/ExtraKeyValueFilter;->mKeyFilter:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/firewall/StringFilter;->matchesValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

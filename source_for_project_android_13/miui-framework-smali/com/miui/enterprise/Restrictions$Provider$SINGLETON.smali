.class public final Lcom/miui/enterprise/Restrictions$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "Restrictions$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/Restrictions$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/miui/enterprise/Restrictions;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/miui/enterprise/Restrictions;

    invoke-direct {v0}, Lcom/miui/enterprise/Restrictions;-><init>()V

    sput-object v0, Lcom/miui/enterprise/Restrictions$Provider$SINGLETON;->INSTANCE:Lcom/miui/enterprise/Restrictions;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

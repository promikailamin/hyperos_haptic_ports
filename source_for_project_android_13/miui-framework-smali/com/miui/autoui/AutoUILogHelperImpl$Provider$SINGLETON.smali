.class public final Lcom/miui/autoui/AutoUILogHelperImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "AutoUILogHelperImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autoui/AutoUILogHelperImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/miui/autoui/AutoUILogHelperImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/miui/autoui/AutoUILogHelperImpl;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUILogHelperImpl;-><init>()V

    sput-object v0, Lcom/miui/autoui/AutoUILogHelperImpl$Provider$SINGLETON;->INSTANCE:Lcom/miui/autoui/AutoUILogHelperImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

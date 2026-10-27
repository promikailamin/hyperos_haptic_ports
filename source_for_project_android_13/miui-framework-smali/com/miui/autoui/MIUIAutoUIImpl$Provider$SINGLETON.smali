.class public final Lcom/miui/autoui/MIUIAutoUIImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "MIUIAutoUIImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autoui/MIUIAutoUIImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/miui/autoui/MIUIAutoUIImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/miui/autoui/MIUIAutoUIImpl;

    invoke-direct {v0}, Lcom/miui/autoui/MIUIAutoUIImpl;-><init>()V

    sput-object v0, Lcom/miui/autoui/MIUIAutoUIImpl$Provider$SINGLETON;->INSTANCE:Lcom/miui/autoui/MIUIAutoUIImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$SingletonHolder;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;
    .registers 1

    sget-object v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$SingletonHolder;->INSTANCE:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 857
    new-instance v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;-><init>(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler-IA;)V

    sput-object v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$SingletonHolder;->INSTANCE:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

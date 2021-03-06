.class Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TelocationAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerHandler;,
        Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    }
.end annotation


# static fields
.field private static final EVENT_QUERY_TELOCATION:I = 0xa

.field private static sInstance:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;


# instance fields
.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 863
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 864
    return-void
.end method

.method public static getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;
    .locals 2

    .prologue
    .line 801
    sget-object v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->sInstance:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    if-nez v0, :cond_1

    .line 802
    const-class v1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    monitor-enter v1

    .line 803
    :try_start_0
    sget-object v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->sInstance:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 804
    new-instance v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    invoke-direct {v0}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;-><init>()V

    sput-object v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->sInstance:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    .line 806
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    :cond_1
    sget-object v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->sInstance:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    return-object v0

    .line 806
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static queryTelocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 820
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 868
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 869
    new-instance v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerHandler;

    invoke-direct {v0, p0, p1}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerHandler;-><init>(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    .line 871
    :cond_0
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 908
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;

    .line 910
    .local v6, "args":Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 911
    iget-object v0, v6, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->listener:Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, v6, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->listener:Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;

    iget-object v1, v6, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie1:Ljava/lang/Object;

    iget-object v2, v6, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie2:Ljava/lang/Object;

    iget-object v3, v6, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie3:Ljava/lang/Object;

    iget-object v4, v6, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie4:Ljava/lang/Object;

    iget-object v5, v6, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->location:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 916
    :cond_0
    return-void
.end method

.method public startQueryTelocationString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie1"    # Ljava/lang/Object;
    .param p3, "cookie2"    # Ljava/lang/Object;
    .param p4, "cookie3"    # Ljava/lang/Object;
    .param p5, "cookie4"    # Ljava/lang/Object;
    .param p6, "listener"    # Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 889
    new-instance v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;

    invoke-direct {v0}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;-><init>()V

    .line 890
    .local v0, "args":Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    iput-object p0, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->handler:Landroid/os/Handler;

    .line 891
    iput-object p7, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->context:Landroid/content/Context;

    .line 892
    iput-object p8, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->phoneNumber:Ljava/lang/String;

    .line 893
    iput-object p2, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie1:Ljava/lang/Object;

    .line 894
    iput-object p3, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie2:Ljava/lang/Object;

    .line 895
    iput-object p4, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie3:Ljava/lang/Object;

    .line 896
    iput-object p5, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie4:Ljava/lang/Object;

    .line 897
    iput-object p6, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->listener:Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;

    .line 898
    const/4 v2, 0x0

    iput-object v2, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->location:Ljava/lang/String;

    .line 900
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 901
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 902
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 903
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 904
    return-void
.end method
